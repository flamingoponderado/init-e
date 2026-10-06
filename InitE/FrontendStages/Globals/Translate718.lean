import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output718
import InitE.FrontendStages.Declarations.Data718
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate702
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate718_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) =
        some globalOutput718 := by
  dsimp only [simplified718, globalOutput718]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal718 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) := by trivial
theorem globalException718_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) = none := by rfl
#print axioms globalTranslate718_eq
end InitE.FrontendStages.Declarations
