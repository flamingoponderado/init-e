import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output808
import InitE.FrontendStages.Declarations.Data808
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate789
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate808_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified808) =
        some globalOutput808 := by
  dsimp only [simplified808, globalOutput808]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal808 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified808) := by trivial
theorem globalException808_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified808) = none := by rfl
#print axioms globalTranslate808_eq
end InitE.FrontendStages.Declarations
