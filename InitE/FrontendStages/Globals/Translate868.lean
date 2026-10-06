import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output868
import InitE.FrontendStages.Declarations.Data868
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate852
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate868_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) =
        some globalOutput868 := by
  dsimp only [simplified868, globalOutput868]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal868 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) := by trivial
theorem globalException868_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified868) = none := by rfl
#print axioms globalTranslate868_eq
end InitE.FrontendStages.Declarations
