import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output773
import InitE.FrontendStages.Declarations.Data773
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate754
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate773_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) =
        some globalOutput773 := by
  dsimp only [simplified773, globalOutput773]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal773 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) := by trivial
theorem globalException773_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) = none := by rfl
#print axioms globalTranslate773_eq
end InitE.FrontendStages.Declarations
