import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output641
import InitE.FrontendStages.Declarations.Data641
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate620
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate641_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified641) =
        some globalOutput641 := by
  dsimp only [simplified641, globalOutput641]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal641 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified641) := by trivial
theorem globalException641_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified641) = none := by rfl
#print axioms globalTranslate641_eq
end InitE.FrontendStages.Declarations
