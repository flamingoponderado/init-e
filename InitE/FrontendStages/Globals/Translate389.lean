import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output389
import InitE.FrontendStages.Declarations.Data389
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate373
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate389_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified389) =
        some globalOutput389 := by
  dsimp only [simplified389, globalOutput389]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal389 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified389) := by trivial
theorem globalException389_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified389) = none := by rfl
#print axioms globalTranslate389_eq
end InitE.FrontendStages.Declarations
