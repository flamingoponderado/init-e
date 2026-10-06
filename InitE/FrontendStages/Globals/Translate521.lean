import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output521
import InitE.FrontendStages.Declarations.Data521
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate505
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate521_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) =
        some globalOutput521 := by
  dsimp only [simplified521, globalOutput521]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal521 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) := by trivial
theorem globalException521_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) = none := by rfl
#print axioms globalTranslate521_eq
end InitE.FrontendStages.Declarations
