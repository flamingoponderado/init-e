import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output527
import InitE.FrontendStages.Declarations.Data527
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate511
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate527_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified527) =
        some globalOutput527 := by
  dsimp only [simplified527, globalOutput527]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal527 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified527) := by trivial
theorem globalException527_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified527) = none := by rfl
#print axioms globalTranslate527_eq
end InitE.FrontendStages.Declarations
