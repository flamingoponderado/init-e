import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output70
import InitE.FrontendStages.Declarations.Data70
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate54
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate70_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified70) =
        some globalOutput70 := by
  dsimp only [simplified70, globalOutput70]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal70 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified70) := by trivial
theorem globalException70_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified70) = none := by rfl
#print axioms globalTranslate70_eq
end InitE.FrontendStages.Declarations
