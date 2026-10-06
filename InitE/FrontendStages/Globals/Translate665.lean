import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output665
import InitE.FrontendStages.Declarations.Data665
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate634
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate665_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified665) =
        some globalOutput665 := by
  dsimp only [simplified665, globalOutput665]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal665 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified665) := by trivial
theorem globalException665_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified665) = none := by rfl
#print axioms globalTranslate665_eq
end InitE.FrontendStages.Declarations
