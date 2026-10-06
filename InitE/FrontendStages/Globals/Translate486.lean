import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output486
import InitE.FrontendStages.Declarations.Data486
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate470
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate486_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) =
        some globalOutput486 := by
  dsimp only [simplified486, globalOutput486]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal486 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) := by trivial
theorem globalException486_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) = none := by rfl
#print axioms globalTranslate486_eq
end InitE.FrontendStages.Declarations
