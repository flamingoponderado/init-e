import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output431
import InitE.FrontendStages.Declarations.Data431
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate415
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate431_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified431) =
        some globalOutput431 := by
  dsimp only [simplified431, globalOutput431]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal431 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified431) := by trivial
theorem globalException431_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified431) = none := by rfl
#print axioms globalTranslate431_eq
end InitE.FrontendStages.Declarations
