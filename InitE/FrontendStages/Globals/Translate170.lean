import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output170
import InitE.FrontendStages.Declarations.Data170
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate154
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate170_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) =
        some globalOutput170 := by
  dsimp only [simplified170, globalOutput170]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal170 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) := by trivial
theorem globalException170_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) = none := by rfl
#print axioms globalTranslate170_eq
end InitE.FrontendStages.Declarations
