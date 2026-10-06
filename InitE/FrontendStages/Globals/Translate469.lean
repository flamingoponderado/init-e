import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output469
import InitE.FrontendStages.Declarations.Data469
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate453
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate469_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) =
        some globalOutput469 := by
  dsimp only [simplified469, globalOutput469]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal469 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) := by trivial
theorem globalException469_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified469) = none := by rfl
#print axioms globalTranslate469_eq
end InitE.FrontendStages.Declarations
