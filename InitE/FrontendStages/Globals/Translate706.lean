import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output706
import InitE.FrontendStages.Declarations.Data706
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate690
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate706_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) =
        some globalOutput706 := by
  dsimp only [simplified706, globalOutput706]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal706 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) := by trivial
theorem globalException706_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified706) = none := by rfl
#print axioms globalTranslate706_eq
end InitE.FrontendStages.Declarations
