import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output396
import InitE.FrontendStages.Declarations.Data396
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate380
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate396_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified396) =
        some globalOutput396 := by
  dsimp only [simplified396, globalOutput396]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal396 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified396) := by trivial
theorem globalException396_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified396) = none := by rfl
#print axioms globalTranslate396_eq
end InitE.FrontendStages.Declarations
