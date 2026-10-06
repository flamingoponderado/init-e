import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output730
import InitE.FrontendStages.Declarations.Data730
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate713
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate730_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified730) =
        some globalOutput730 := by
  dsimp only [simplified730, globalOutput730]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal730 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified730) := by trivial
theorem globalException730_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified730) = none := by rfl
#print axioms globalTranslate730_eq
end InitE.FrontendStages.Declarations
