import Guest.Model
import Flapjack.Parser

/-!
`lake exe run-program PROGRAM.pp.pnk [input] [fuel] [bytes]`

Runs a cpp-expanded Pancake program (such as a unit test built by
`guest/build.sh`, which leaves `<out>.pp.pnk` beside the ELF) under the same stepped
source semantics, host memory and FFI oracle as `run-guest`, and prints the first
`bytes` (default 64) of the output region as hex.

`input` is a packed guest input (`[8B LE len][blob][pad]`), as for `run-guest`.
-/

open Flapjack Guest

def unpackInput (bytes : ByteArray) : Except String InputBlob := do
  if bytes.size < 8 then throw s!"packed input too short: {bytes.size} bytes"
  let length := (List.range 8).foldr (fun i acc => acc * 256 + bytes[i]!.toNat) 0
  if bytes.size < 8 + length then
    throw s!"packed input truncated: length {length}, {bytes.size} bytes"
  pure ((bytes.extract 8 (8 + length)).toList.map fun byte => BitVec.ofNat 8 byte.toNat)

def outputHex (host : HostMemory) (count : Nat) : String :=
  String.join <| (List.range count).map fun index =>
    match host (outputAddr + BitVec.ofNat 64 index) with
    | some byte =>
        let digits := String.ofList (Nat.toDigits 16 byte.toNat)
        if digits.length < 2 then "0" ++ digits else digits
    | none => "??"

def main (args : List String) : IO UInt32 := do
  let some path := args[0]? | do IO.eprintln "usage: run-program PROGRAM.pp.pnk [input] [fuel] [bytes]"; return 2
  let source ← IO.FS.readFile ⟨path⟩
  let decls ← match Parser.parseTopDecs (BitVec.ofInt 64) source with
    | .ok decls => pure decls
    | .error errors => do
        IO.eprintln s!"parse failed: {errors.length} error(s)"
        return 2
  let input : InputBlob ← match args[1]? with
    | some inputPath => do
        match unpackInput (← IO.FS.readBinFile ⟨inputPath⟩) with
        | .ok blob => pure blob
        | .error message => do IO.eprintln message; return 2
    | none => pure []
  let fuel := (args[2]?.bind String.toNat?).getD (2 ^ 40)
  let count := (args[3]?.bind String.toNat?).getD 64
  match runProgramStepped decls input fuel with
  | none => do IO.println "run failed (none)"; return 1
  | some (_, steps) => do
      IO.println s!"steps: {steps}"
      match runProgramStepped decls input fuel with
      | some (result, _) => IO.println s!"output: {outputHex (hostMemoryOf result) count}"
      | none => pure ()
      return 0
