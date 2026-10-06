import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output666
import InitE.FrontendStages.Declarations.Data666
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate635
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate666_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified666) =
        some globalOutput666 := by
  dsimp only [simplified666, globalOutput666]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal666 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified666) := by trivial
theorem globalException666_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified666) = none := by rfl
#print axioms globalTranslate666_eq
end InitE.FrontendStages.Declarations
