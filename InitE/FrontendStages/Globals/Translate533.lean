import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output533
import InitE.FrontendStages.Declarations.Data533
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate517
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate533_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) =
        some globalOutput533 := by
  dsimp only [simplified533, globalOutput533]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal533 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) := by trivial
theorem globalException533_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified533) = none := by rfl
#print axioms globalTranslate533_eq
end InitE.FrontendStages.Declarations
