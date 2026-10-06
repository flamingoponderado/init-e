import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output277
import InitE.FrontendStages.Declarations.Data277
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate261
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate277_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified277) =
        some globalOutput277 := by
  dsimp only [simplified277, globalOutput277]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal277 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified277) := by trivial
theorem globalException277_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified277) = none := by rfl
#print axioms globalTranslate277_eq
end InitE.FrontendStages.Declarations
