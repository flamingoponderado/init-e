import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output195
import InitE.FrontendStages.Declarations.Data195
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate175
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate195_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) =
        some globalOutput195 := by
  dsimp only [simplified195, globalOutput195]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal195 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) := by trivial
theorem globalException195_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) = none := by rfl
#print axioms globalTranslate195_eq
end InitE.FrontendStages.Declarations
