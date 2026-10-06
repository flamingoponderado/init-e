import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output600
import InitE.FrontendStages.Declarations.Data600
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate584
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate600_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) =
        some globalOutput600 := by
  dsimp only [simplified600, globalOutput600]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal600 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) := by trivial
theorem globalException600_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified600) = none := by rfl
#print axioms globalTranslate600_eq
end InitE.FrontendStages.Declarations
