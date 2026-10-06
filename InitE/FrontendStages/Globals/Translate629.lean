import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output629
import InitE.FrontendStages.Declarations.Data629
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate604
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate629_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified629) =
        some globalOutput629 := by
  dsimp only [simplified629, globalOutput629]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal629 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified629) := by trivial
theorem globalException629_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified629) = none := by rfl
#print axioms globalTranslate629_eq
end InitE.FrontendStages.Declarations
