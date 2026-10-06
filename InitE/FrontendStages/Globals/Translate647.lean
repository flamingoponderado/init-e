import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output647
import InitE.FrontendStages.Declarations.Data647
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate631
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate647_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) =
        some globalOutput647 := by
  dsimp only [simplified647, globalOutput647]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal647 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) := by trivial
theorem globalException647_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) = none := by rfl
#print axioms globalTranslate647_eq
end InitE.FrontendStages.Declarations
