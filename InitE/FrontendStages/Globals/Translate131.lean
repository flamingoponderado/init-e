import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output131
import InitE.FrontendStages.Declarations.Data131
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate115
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate131_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified131) =
        some globalOutput131 := by
  dsimp only [simplified131, globalOutput131]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal131 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified131) := by trivial
theorem globalException131_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified131) = none := by rfl
#print axioms globalTranslate131_eq
end InitE.FrontendStages.Declarations
