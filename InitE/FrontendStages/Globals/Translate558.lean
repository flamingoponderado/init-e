import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output558
import InitE.FrontendStages.Declarations.Data558
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate542
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate558_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) =
        some globalOutput558 := by
  dsimp only [simplified558, globalOutput558]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal558 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) := by trivial
theorem globalException558_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) = none := by rfl
#print axioms globalTranslate558_eq
end InitE.FrontendStages.Declarations
