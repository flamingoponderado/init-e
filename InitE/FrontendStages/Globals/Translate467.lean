import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output467
import InitE.FrontendStages.Declarations.Data467
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate451
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate467_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) =
        some globalOutput467 := by
  dsimp only [simplified467, globalOutput467]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal467 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) := by trivial
theorem globalException467_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified467) = none := by rfl
#print axioms globalTranslate467_eq
end InitE.FrontendStages.Declarations
