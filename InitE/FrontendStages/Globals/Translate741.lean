import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output741
import InitE.FrontendStages.Declarations.Data741
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate719
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate741_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified741) =
        some globalOutput741 := by
  dsimp only [simplified741, globalOutput741]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal741 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified741) := by trivial
theorem globalException741_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified741) = none := by rfl
#print axioms globalTranslate741_eq
end InitE.FrontendStages.Declarations
