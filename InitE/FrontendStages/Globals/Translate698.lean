import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output698
import InitE.FrontendStages.Declarations.Data698
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate682
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate698_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified698) =
        some globalOutput698 := by
  dsimp only [simplified698, globalOutput698]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal698 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified698) := by trivial
theorem globalException698_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified698) = none := by rfl
#print axioms globalTranslate698_eq
end InitE.FrontendStages.Declarations
