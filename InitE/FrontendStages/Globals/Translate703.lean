import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output703
import InitE.FrontendStages.Declarations.Data703
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate687
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate703_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) =
        some globalOutput703 := by
  dsimp only [simplified703, globalOutput703]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal703 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) := by trivial
theorem globalException703_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified703) = none := by rfl
#print axioms globalTranslate703_eq
end InitE.FrontendStages.Declarations
