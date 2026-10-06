import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output498
import InitE.FrontendStages.Declarations.Data498
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate482
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate498_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified498) =
        some globalOutput498 := by
  dsimp only [simplified498, globalOutput498]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal498 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified498) := by trivial
theorem globalException498_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified498) = none := by rfl
#print axioms globalTranslate498_eq
end InitE.FrontendStages.Declarations
