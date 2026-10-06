import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output711
import InitE.FrontendStages.Declarations.Data711
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate695
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate711_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified711) =
        some globalOutput711 := by
  dsimp only [simplified711, globalOutput711]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal711 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified711) := by trivial
theorem globalException711_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified711) = none := by rfl
#print axioms globalTranslate711_eq
end InitE.FrontendStages.Declarations
