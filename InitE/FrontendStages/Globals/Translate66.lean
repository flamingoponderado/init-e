import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output66
import InitE.FrontendStages.Declarations.Data66
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate50
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate66_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) =
        some globalOutput66 := by
  dsimp only [simplified66, globalOutput66]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal66 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) := by trivial
theorem globalException66_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified66) = none := by rfl
#print axioms globalTranslate66_eq
end InitE.FrontendStages.Declarations
