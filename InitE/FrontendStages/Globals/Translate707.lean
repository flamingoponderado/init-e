import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output707
import InitE.FrontendStages.Declarations.Data707
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate691
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate707_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) =
        some globalOutput707 := by
  dsimp only [simplified707, globalOutput707]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal707 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) := by trivial
theorem globalException707_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified707) = none := by rfl
#print axioms globalTranslate707_eq
end InitE.FrontendStages.Declarations
