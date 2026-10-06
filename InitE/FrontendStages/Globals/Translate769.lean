import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output769
import InitE.FrontendStages.Declarations.Data769
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate750
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate769_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified769) =
        some globalOutput769 := by
  dsimp only [simplified769, globalOutput769]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal769 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified769) := by trivial
theorem globalException769_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified769) = none := by rfl
#print axioms globalTranslate769_eq
end InitE.FrontendStages.Declarations
