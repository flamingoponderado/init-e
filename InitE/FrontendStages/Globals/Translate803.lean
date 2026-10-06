import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output803
import InitE.FrontendStages.Declarations.Data803
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate784
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate803_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified803) =
        some globalOutput803 := by
  dsimp only [simplified803, globalOutput803]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal803 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified803) := by trivial
theorem globalException803_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified803) = none := by rfl
#print axioms globalTranslate803_eq
end InitE.FrontendStages.Declarations
