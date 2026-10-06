import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output429
import InitE.FrontendStages.Declarations.Data429
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate413
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate429_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) =
        some globalOutput429 := by
  dsimp only [simplified429, globalOutput429]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal429 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) := by trivial
theorem globalException429_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified429) = none := by rfl
#print axioms globalTranslate429_eq
end InitE.FrontendStages.Declarations
