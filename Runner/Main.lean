import Runner.Run

/-! `eest-runner [ELF] INPUT OUTPUT`: `spike_run`'s command line. The ELF
argument is ignored. `INPUT` holds an 8-byte little-endian length and then the
payload; `OUTPUT` receives `SPIKE_OUTPUT_LEN` output bytes (default 256).
`EEST_RUNNER_CLOCK` sets the source clock (default 2^40).

Exit codes: 0 halt, 3 trap, 4 clock exhausted, 5 evaluation error,
6 another final call, 2 usage or input error. -/
open Runner Flapjack InitE

def classify : Result → UInt32 × String
  | some (.finalFfi event) =>
      if event.name = .extCall (Basis.Pure.MlString.ofString "halt") then (0, "halted")
      else if event.name = .extCall (Basis.Pure.MlString.ofString "trap") then (3, "trapped")
      else (6, "other final call")
  | some .timeOut => (4, "clock exhausted")
  | _ => (5, "evaluation error")

def envNat (name : String) (default : Nat) : IO Nat := do
  match (← IO.getEnv name) with
  | some value => return value.toNat?.getD default
  | none => return default

def main (args : List String) : IO UInt32 := do
  let paths : Option (String × String) := match args with
    | [_, i, o] => some (i, o)
    | [i, o] => some (i, o)
    | _ => none
  let some (inputPath, outputPath) := paths
    | IO.eprintln "usage: eest-runner [ELF] INPUT OUTPUT"; return 2
  let raw ← IO.FS.readBinFile inputPath
  if raw.size < 8 then
    IO.eprintln "eest-runner: input shorter than its length header"
    return 2
  let length := (List.range 8).foldr (fun i acc => acc * 256 + (raw.get! i).toNat) 0
  if raw.size < 8 + length then
    IO.eprintln "eest-runner: input shorter than its declared length"
    return 2
  let input : Guest.InputBlob :=
    ((raw.extract 8 (8 + length)).toList.map fun byte => BitVec.ofNat 8 byte.toNat)
  let clock ← envNat "EEST_RUNNER_CLOCK" (2 ^ 40)
  let outputLength ← envNat "SPIKE_OUTPUT_LEN" 256
  let start ← IO.monoMsNow
  match crun input clock with
  | none =>
      IO.eprintln "eest-runner: declarations failed"
      return 5
  | some (result, final) =>
      let events := final.events.reverse
      let bytes := outputBytes (inputArray input) events outputLength
      IO.FS.writeBinFile outputPath (ByteArray.mk bytes.toArray)
      let (code, text) := classify result
      let secs := (Float.ofNat ((← IO.monoMsNow) - start)) / 1000.0
      IO.eprintln s!"eest_runner: {text} clock={clock - final.clock} events={events.length} secs={secs}"
      return code
