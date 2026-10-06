import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output675
import InitE.FrontendStages.Declarations.Data675
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate644
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate675_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified675) =
        some globalOutput675 := by
  dsimp only [simplified675, globalOutput675]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal675 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified675) := by trivial
theorem globalException675_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified675) = none := by rfl
#print axioms globalTranslate675_eq
end InitE.FrontendStages.Declarations
