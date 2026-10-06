import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output697
import InitE.FrontendStages.Declarations.Data697
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate681
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate697_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified697) =
        some globalOutput697 := by
  dsimp only [simplified697, globalOutput697]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal697 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified697) := by trivial
theorem globalException697_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified697) = none := by rfl
#print axioms globalTranslate697_eq
end InitE.FrontendStages.Declarations
