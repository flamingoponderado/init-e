import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output27
import InitE.FrontendStages.Declarations.Data27
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate11
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate27_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified27) =
        some globalOutput27 := by
  dsimp only [simplified27, globalOutput27]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal27 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified27) := by trivial
theorem globalException27_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified27) = none := by rfl
#print axioms globalTranslate27_eq
end InitE.FrontendStages.Declarations
