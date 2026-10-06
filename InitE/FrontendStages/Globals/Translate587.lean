import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output587
import InitE.FrontendStages.Declarations.Data587
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate571
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate587_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified587) =
        some globalOutput587 := by
  dsimp only [simplified587, globalOutput587]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal587 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified587) := by trivial
theorem globalException587_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified587) = none := by rfl
#print axioms globalTranslate587_eq
end InitE.FrontendStages.Declarations
