import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output536
import InitE.FrontendStages.Declarations.Data536
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate520
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate536_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) =
        some globalOutput536 := by
  dsimp only [simplified536, globalOutput536]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal536 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) := by trivial
theorem globalException536_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified536) = none := by rfl
#print axioms globalTranslate536_eq
end InitE.FrontendStages.Declarations
