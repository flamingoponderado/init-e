import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output583
import InitE.FrontendStages.Declarations.Data583
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate563
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate583_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified583) =
        some globalOutput583 := by
  dsimp only [simplified583, globalOutput583]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal583 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified583) := by trivial
theorem globalException583_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified583) = none := by rfl
#print axioms globalTranslate583_eq
end InitE.FrontendStages.Declarations
