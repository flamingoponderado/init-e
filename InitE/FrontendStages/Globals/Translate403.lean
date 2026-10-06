import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output403
import InitE.FrontendStages.Declarations.Data403
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate387
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate403_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) =
        some globalOutput403 := by
  dsimp only [simplified403, globalOutput403]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal403 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) := by trivial
theorem globalException403_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) = none := by rfl
#print axioms globalTranslate403_eq
end InitE.FrontendStages.Declarations
