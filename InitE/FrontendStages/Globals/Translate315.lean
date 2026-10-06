import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output315
import InitE.FrontendStages.Declarations.Data315
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate299
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate315_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) =
        some globalOutput315 := by
  dsimp only [simplified315, globalOutput315]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal315 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) := by trivial
theorem globalException315_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified315) = none := by rfl
#print axioms globalTranslate315_eq
end InitE.FrontendStages.Declarations
