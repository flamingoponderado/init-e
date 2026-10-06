import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output97
import InitE.FrontendStages.Declarations.Data97
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate78
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate97_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified97) =
        some globalOutput97 := by
  dsimp only [simplified97, globalOutput97]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal97 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified97) := by trivial
theorem globalException97_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified97) = none := by rfl
#print axioms globalTranslate97_eq
end InitE.FrontendStages.Declarations
