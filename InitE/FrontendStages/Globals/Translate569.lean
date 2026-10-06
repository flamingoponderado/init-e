import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output569
import InitE.FrontendStages.Declarations.Data569
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate549
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate569_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified569) =
        some globalOutput569 := by
  dsimp only [simplified569, globalOutput569]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal569 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified569) := by trivial
theorem globalException569_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified569) = none := by rfl
#print axioms globalTranslate569_eq
end InitE.FrontendStages.Declarations
