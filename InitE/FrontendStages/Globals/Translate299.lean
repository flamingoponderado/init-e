import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output299
import InitE.FrontendStages.Declarations.Data299
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate282
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate299_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) =
        some globalOutput299 := by
  dsimp only [simplified299, globalOutput299]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal299 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) := by trivial
theorem globalException299_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified299) = none := by rfl
#print axioms globalTranslate299_eq
end InitE.FrontendStages.Declarations
