import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output465
import InitE.FrontendStages.Declarations.Data465
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate449
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate465_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified465) =
        some globalOutput465 := by
  dsimp only [simplified465, globalOutput465]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal465 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified465) := by trivial
theorem globalException465_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified465) = none := by rfl
#print axioms globalTranslate465_eq
end InitE.FrontendStages.Declarations
