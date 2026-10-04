import InitE.CompilerFacts
import InitE.ArtifactFacts

namespace InitE
open Flapjack

/-- Full native compiler output; evaluated in proofs, never substituted for
submitted literal bytes. -/
def baselineArtifact : RiscV.NativeSource.Artifact :=
  RiscV.NativeSource.compileDeclarations Guest.guestAst

private def artifactConfig {A B C : Type} (artifact : Option (A × B × C)) (fallback : C) : C :=
  match artifact with
  | some value => value.2.2
  | none => fallback

def baselineConfig : Compiler.Backend.Backend.Config :=
  artifactConfig baselineArtifact Compiler.Backend.RiscVConfig.pancakeRiscVBackendConfig

def baselineOutput : RiscV.NativeSource.Output :=
  { declarations := sourceDeclarations
    artifact := baselineArtifact
    warnings := (staticCheck Guest.guestAst).2 }

private theorem artifact_pair_complete {A B C : Type}
    (artifact : Option (A × B × C)) (a : A) (b : B) (fallback : C)
    (projection : artifact.map (fun x => (x.1, x.2.1)) = some (a,b)) :
    artifact = some (a, b, artifactConfig artifact fallback) := by
  cases artifact with
  | none => simp at projection
  | some value =>
    obtain ⟨first, second, config⟩ := value
    simp only [Option.map_some, Option.some.injEq, Prod.mk.injEq] at projection
    rcases projection with ⟨rfl, rfl⟩
    rfl

theorem baseline_artifact_complete :
    baselineArtifact = some (InitECandidate.nativeCode, InitECandidate.bitmaps, baselineConfig) :=
  artifact_pair_complete baselineArtifact _ _
    Compiler.Backend.RiscVConfig.pancakeRiscVBackendConfig baseline_artifact_matches

private theorem except_unit_ok {E : Type} (result : Except E Unit)
    (h : result.isOk = true) : result = .ok () := by
  cases result with
  | error _ => cases h
  | ok value => cases value; rfl

private theorem baseline_static_check : (staticCheck Guest.guestAst).1 = .ok () :=
  except_unit_ok _ (by native_decide)

private theorem compile_success_of_parse (source : String)
    (parsed : List (Decl (BitVec 64)))
    (parsedEq : Parser.parseTopDecs (fun value => BitVec.ofInt 64 value) source = .ok parsed)
    (checked : (staticCheck parsed).1 = .ok ()) :
    RiscV.NativeSource.compile source = .ok {
      declarations := Pancake.PanToTarget.mainFirstHOL (parsed.map Pancake.PanLang.declToHOL)
      artifact := RiscV.NativeSource.compileDeclarations parsed
      warnings := (staticCheck parsed).2 } := by
  unfold RiscV.NativeSource.compile
  rw [parsedEq]
  simp only [checked]

/-- Successful parsing and static checking of the original source. -/
theorem baseline_compile_success :
    RiscV.NativeSource.compile Guest.guestSource = .ok baselineOutput := by
  have hparse : Parser.parseTopDecs (fun value => BitVec.ofInt 64 value)
      Guest.guestSource = .ok Guest.guestAst := Guest.guestParse_eq_ast
  exact compile_success_of_parse Guest.guestSource Guest.guestAst hparse baseline_static_check

end InitE
