import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output499
import InitE.FrontendStages.Declarations.Data499
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate483
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate499_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) =
        some globalOutput499 := by
  dsimp only [simplified499, globalOutput499]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal499 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) := by trivial
theorem globalException499_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) = none := by rfl
#print axioms globalTranslate499_eq
end InitE.FrontendStages.Declarations
