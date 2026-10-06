import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output708
import InitE.FrontendStages.Declarations.Data708
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate692
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate708_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified708) =
        some globalOutput708 := by
  dsimp only [simplified708, globalOutput708]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal708 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified708) := by trivial
theorem globalException708_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified708) = none := by rfl
#print axioms globalTranslate708_eq
end InitE.FrontendStages.Declarations
