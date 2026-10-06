import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output113
import InitE.FrontendStages.Declarations.Data113
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate94
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate113_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified113) =
        some globalOutput113 := by
  dsimp only [simplified113, globalOutput113]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal113 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified113) := by trivial
theorem globalException113_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified113) = none := by rfl
#print axioms globalTranslate113_eq
end InitE.FrontendStages.Declarations
