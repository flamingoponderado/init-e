import InitE.FrontendStages.MainData
import InitE.FrontendStages.Pass1
import InitE.FrontendStages.Globals.Initializers
import InitE.GlobalsTopComposition

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.FrontendStages
open Flapjack Flapjack.Pancake.PanLang
open Declarations

private def firstFunction : FunDeclHOL 64 :=
  match simplifiedData0 with
  | .function fn => funDeclToHOL fn
  | _ => { name := globalStart, inline := false, exported := false, params := [],
           body := .skip, returnShape := .one }

private theorem firstFunction_source : .function firstFunction :: simplifieds.drop 1 = simplifieds := by
  simp only [simplifieds, List.drop_succ_cons, List.drop_zero, firstFunction,
    simplified0, simplifiedData0, declToHOL]

private theorem compileSelected_source : compileTopExactHOL simplifieds globalStart =
    InitE.GlobalsComputation.compileSelected simplifieds globalStart [] .one := by
  have h := InitE.GlobalsComputation.compileTop_first firstFunction (simplifieds.drop 1)
  rw [firstFunction_source] at h
  simpa only [firstFunction, simplifiedData0, funDeclToHOL, globalStart,
    List.map_nil, shapeToHOL] using h


def pass2 : List (DeclHOL 64) := exceptionDeclarations ++ generatedMain :: translatedFunctions

private theorem renamedSource_eq :
    fpermDecsHOL globalStart globalNewStart (resortDeclsHOL simplifieds) =
      exceptionDeclarations ++ globalDeclarations ++ renamedFunctionDeclarations := by
  apply InitE.GlobalsComputation.renameThree_eq _ _ _ _ _ _ _
    sourceResort_eq renameExceptions_eq renameGlobals_eq
  exact InitE.GlobalsComputation.fpermDecs_eq_map _ _ _

private theorem compiledSource_eq :
    compileDecsExactHOL globalInitial
      (exceptionDeclarations ++ globalDeclarations ++ renamedFunctionDeclarations) =
      (globalInitializers, translatedFunctions, exceptionDeclarations, globalContext) :=
  InitE.GlobalsComputation.compileThree_eq _ _ _ _ _ _ _ _
    (compileExceptions_eq globalInitial) compileGlobals_eq compileFunctionDeclarations_eq

theorem pass2_eq : compileTopExactHOL pass1 globalStart = pass2 := by
  change compileTopExactHOL simplifieds globalStart = pass2
  exact compileSelected_source.trans
    (InitE.GlobalsComputation.compileSelected_eq _ _ _ _ [] .one _ _ _ _ _
      globalNewStart_eq renamedSource_eq sourceGlobalInitial_eq compiledSource_eq)

#print axioms pass2_eq
end InitE.FrontendStages
