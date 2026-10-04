import Guest.Ast
import Guest.DecidableEq
import Flapjack.Pancake.Proofs.PanToTarget
import Flapjack.RiscV.NativeSource
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput

/-! Static facts about the fixed source. Computation proofs use Lean’s trusted `native_decide` evaluator and its generated axioms.
The executable stack analyzer is linked to the logical compiler by kernel equalities. -/
namespace InitE
open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

private instance : DecidableEq ShapeHOL := fun a b =>
  decidable_of_iff (shapeOfHOL a = shapeOfHOL b)
    ⟨fun h => by simpa using congrArg shapeToHOL h, fun h => congrArg shapeOfHOL h⟩

private instance : DecidableEq StructInfoHOLExact := fun a b =>
  decidable_of_iff (a.fields = b.fields ∧ a.size = b.size)
    ⟨fun h => by cases a; cases b; simp_all, fun h => by cases h; exact ⟨rfl, rfl⟩⟩

/-- The declaration order used by the verified native compiler. -/
def sourceDeclarations : List (DeclHOL 64) :=
  Flapjack.Pancake.PanToTarget.mainFirstHOL (Guest.guestAst.map declToHOL)

theorem sourceGoodCode : pancakeGoodCodeHOL sourceDeclarations = true := by
  native_decide

theorem sourceDistinctParams : distinctParamsHOL (functionsHOL sourceDeclarations) := by
  have h : (functionsHOL sourceDeclarations).all
      (fun entry => decide entry.2.1.Nodup) = true := by native_decide
  exact fun entry he => of_decide_eq_true (List.all_eq_true.mp h entry he)

theorem sourceDistinctFunctions :
    ((functionsHOL sourceDeclarations).map Prod.fst).Nodup := by
  native_decide

theorem sourceStructContext : decsStcnamesHOLExact [] sourceDeclarations = some [] := by
  native_decide

theorem sourceGlobalShapes : decShapesHOL sourceDeclarations = List.replicate 93 .one := by
  native_decide

theorem sourceGlobalsSize :
    ((decShapesHOL sourceDeclarations).map
      (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] sourceDeclarations)))).sum = 93 := by
  rw [sourceStructContext, sourceGlobalShapes]
  simp [holThe, sizeOfShapeWithContextHOL]

theorem sourceExceptionBound : sizeOfEidsHOL sourceDeclarations < 2 ^ 64 := by
  native_decide

/-- Checking names suffices to exhibit the parsed main declaration. -/
theorem sourceHasMain :
    ∃ fi : FunDeclHOL 64, .function fi ∈ Guest.guestAst.map declToHOL ∧
      fi.name = ofString "main" := by
  have h : (Guest.guestAst.map declToHOL).any
      (fun d => match d with
        | .function fi => decide (fi.name = ofString "main")
        | _ => false) = true := by native_decide
  obtain ⟨d, hd, hmain⟩ := List.any_eq_true.mp h
  cases d with
  | function fi => exact ⟨fi, hd, of_decide_eq_true hmain⟩
  | decl _ _ _ => simp at hmain
  | exnDecl _ _ => simp at hmain
  | name _ _ => simp at hmain

/-- Maximum compiler stack use in 64-bit words, before installation margins. -/
def analyzeSourceStack (declarations : List (DeclHOL 64)) : Option Nat :=
  let config := RiscVConfig.pancakeRiscVBackendConfig
  let program := panToWordCompileProgHOL riscvConfig.isa declarations
  let (_, wordProgram) := WordToWord.compileWith RegAlloc.regAllocExecutable
    config.wordToWordConf riscvConfig program
  let (_, wordConfig, _, _) := WordToStack.Native.compileNative riscvConfig false wordProgram
  WordDepth.Executable.fullCallGraphDepthExecutable wordConfig.stackFrameSize
    BvlToBvi.initGlobalsLocation (sptFromAList wordProgram)

def sourceStackBound : Option Nat := analyzeSourceStack sourceDeclarations

theorem sourceStackBound_eq : sourceStackBound = some 538 := by
  native_decide

end InitE
