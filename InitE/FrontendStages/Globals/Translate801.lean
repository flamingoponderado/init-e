import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output801
import InitE.FrontendStages.Declarations.Data801
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate782
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate801_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified801) =
        some globalOutput801 := by
  dsimp only [simplified801, globalOutput801]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal801 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified801) := by trivial
theorem globalException801_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified801) = none := by rfl
#print axioms globalTranslate801_eq
end InitE.FrontendStages.Declarations
