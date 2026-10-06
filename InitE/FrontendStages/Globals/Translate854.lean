import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output854
import InitE.FrontendStages.Declarations.Data854
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate837
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate854_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) =
        some globalOutput854 := by
  dsimp only [simplified854, globalOutput854]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal854 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) := by trivial
theorem globalException854_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) = none := by rfl
#print axioms globalTranslate854_eq
end InitE.FrontendStages.Declarations
