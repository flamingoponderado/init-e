import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output594
import InitE.FrontendStages.Declarations.Data594
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate578
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate594_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) =
        some globalOutput594 := by
  dsimp only [simplified594, globalOutput594]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal594 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) := by trivial
theorem globalException594_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) = none := by rfl
#print axioms globalTranslate594_eq
end InitE.FrontendStages.Declarations
