import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output432
import InitE.FrontendStages.Declarations.Data432
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate416
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate432_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified432) =
        some globalOutput432 := by
  dsimp only [simplified432, globalOutput432]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal432 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified432) := by trivial
theorem globalException432_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified432) = none := by rfl
#print axioms globalTranslate432_eq
end InitE.FrontendStages.Declarations
