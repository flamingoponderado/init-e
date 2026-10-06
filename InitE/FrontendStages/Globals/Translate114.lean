import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output114
import InitE.FrontendStages.Declarations.Data114
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate95
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate114_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified114) =
        some globalOutput114 := by
  dsimp only [simplified114, globalOutput114]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal114 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified114) := by trivial
theorem globalException114_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified114) = none := by rfl
#print axioms globalTranslate114_eq
end InitE.FrontendStages.Declarations
