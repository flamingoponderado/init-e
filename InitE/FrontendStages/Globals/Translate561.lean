import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output561
import InitE.FrontendStages.Declarations.Data561
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate545
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate561_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) =
        some globalOutput561 := by
  dsimp only [simplified561, globalOutput561]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal561 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) := by trivial
theorem globalException561_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified561) = none := by rfl
#print axioms globalTranslate561_eq
end InitE.FrontendStages.Declarations
