import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output649
import InitE.FrontendStages.Declarations.Data649
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate633
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate649_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified649) =
        some globalOutput649 := by
  dsimp only [simplified649, globalOutput649]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal649 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified649) := by trivial
theorem globalException649_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified649) = none := by rfl
#print axioms globalTranslate649_eq
end InitE.FrontendStages.Declarations
