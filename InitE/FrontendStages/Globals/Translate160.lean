import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output160
import InitE.FrontendStages.Declarations.Data160
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate143
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate160_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified160) =
        some globalOutput160 := by
  dsimp only [simplified160, globalOutput160]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal160 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified160) := by trivial
theorem globalException160_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified160) = none := by rfl
#print axioms globalTranslate160_eq
end InitE.FrontendStages.Declarations
