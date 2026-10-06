import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output385
import InitE.FrontendStages.Declarations.Data385
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate369
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate385_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified385) =
        some globalOutput385 := by
  dsimp only [simplified385, globalOutput385]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal385 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified385) := by trivial
theorem globalException385_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified385) = none := by rfl
#print axioms globalTranslate385_eq
end InitE.FrontendStages.Declarations
