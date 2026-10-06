import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output638
import InitE.FrontendStages.Declarations.Data638
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate617
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate638_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) =
        some globalOutput638 := by
  dsimp only [simplified638, globalOutput638]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal638 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) := by trivial
theorem globalException638_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) = none := by rfl
#print axioms globalTranslate638_eq
end InitE.FrontendStages.Declarations
