import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output826
import InitE.FrontendStages.Declarations.Data826
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate810
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate826_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified826) =
        some globalOutput826 := by
  dsimp only [simplified826, globalOutput826]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal826 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified826) := by trivial
theorem globalException826_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified826) = none := by rfl
#print axioms globalTranslate826_eq
end InitE.FrontendStages.Declarations
