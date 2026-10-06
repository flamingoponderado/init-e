import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output262
import InitE.FrontendStages.Declarations.Data262
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate239
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate262_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified262) =
        some globalOutput262 := by
  dsimp only [simplified262, globalOutput262]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal262 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified262) := by trivial
theorem globalException262_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified262) = none := by rfl
#print axioms globalTranslate262_eq
end InitE.FrontendStages.Declarations
