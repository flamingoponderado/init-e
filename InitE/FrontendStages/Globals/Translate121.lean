import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output121
import InitE.FrontendStages.Declarations.Data121
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate104
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate121_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) =
        some globalOutput121 := by
  dsimp only [simplified121, globalOutput121]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal121 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) := by trivial
theorem globalException121_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified121) = none := by rfl
#print axioms globalTranslate121_eq
end InitE.FrontendStages.Declarations
