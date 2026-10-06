import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output582
import InitE.FrontendStages.Declarations.Data582
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate562
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate582_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified582) =
        some globalOutput582 := by
  dsimp only [simplified582, globalOutput582]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal582 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified582) := by trivial
theorem globalException582_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified582) = none := by rfl
#print axioms globalTranslate582_eq
end InitE.FrontendStages.Declarations
