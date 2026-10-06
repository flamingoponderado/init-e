import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output41
import InitE.FrontendStages.Declarations.Data41
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate24
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate41_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified41) =
        some globalOutput41 := by
  dsimp only [simplified41, globalOutput41]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal41 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified41) := by trivial
theorem globalException41_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified41) = none := by rfl
#print axioms globalTranslate41_eq
end InitE.FrontendStages.Declarations
