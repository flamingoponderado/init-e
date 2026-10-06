import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output494
import InitE.FrontendStages.Declarations.Data494
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate478
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate494_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified494) =
        some globalOutput494 := by
  dsimp only [simplified494, globalOutput494]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal494 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified494) := by trivial
theorem globalException494_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified494) = none := by rfl
#print axioms globalTranslate494_eq
end InitE.FrontendStages.Declarations
