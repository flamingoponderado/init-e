import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output756
import InitE.FrontendStages.Declarations.Data756
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate740
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate756_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified756) =
        some globalOutput756 := by
  dsimp only [simplified756, globalOutput756]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal756 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified756) := by trivial
theorem globalException756_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified756) = none := by rfl
#print axioms globalTranslate756_eq
end InitE.FrontendStages.Declarations
