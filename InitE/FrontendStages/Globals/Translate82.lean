import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output82
import InitE.FrontendStages.Declarations.Data82
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate66
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate82_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified82) =
        some globalOutput82 := by
  dsimp only [simplified82, globalOutput82]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal82 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified82) := by trivial
theorem globalException82_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified82) = none := by rfl
#print axioms globalTranslate82_eq
end InitE.FrontendStages.Declarations
