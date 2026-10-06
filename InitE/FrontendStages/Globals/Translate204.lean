import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output204
import InitE.FrontendStages.Declarations.Data204
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate184
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate204_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified204) =
        some globalOutput204 := by
  dsimp only [simplified204, globalOutput204]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal204 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified204) := by trivial
theorem globalException204_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified204) = none := by rfl
#print axioms globalTranslate204_eq
end InitE.FrontendStages.Declarations
