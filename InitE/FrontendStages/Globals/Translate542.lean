import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output542
import InitE.FrontendStages.Declarations.Data542
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate526
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate542_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified542) =
        some globalOutput542 := by
  dsimp only [simplified542, globalOutput542]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal542 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified542) := by trivial
theorem globalException542_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified542) = none := by rfl
#print axioms globalTranslate542_eq
end InitE.FrontendStages.Declarations
