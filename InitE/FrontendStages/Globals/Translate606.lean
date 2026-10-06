import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output606
import InitE.FrontendStages.Declarations.Data606
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate590
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate606_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) =
        some globalOutput606 := by
  dsimp only [simplified606, globalOutput606]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal606 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) := by trivial
theorem globalException606_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified606) = none := by rfl
#print axioms globalTranslate606_eq
end InitE.FrontendStages.Declarations
