import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output776
import InitE.FrontendStages.Declarations.Data776
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate760
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate776_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified776) =
        some globalOutput776 := by
  dsimp only [simplified776, globalOutput776]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal776 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified776) := by trivial
theorem globalException776_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified776) = none := by rfl
#print axioms globalTranslate776_eq
end InitE.FrontendStages.Declarations
