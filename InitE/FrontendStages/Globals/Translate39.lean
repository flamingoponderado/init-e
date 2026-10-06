import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output39
import InitE.FrontendStages.Declarations.Data39
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate22
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate39_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) =
        some globalOutput39 := by
  dsimp only [simplified39, globalOutput39]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal39 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) := by trivial
theorem globalException39_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified39) = none := by rfl
#print axioms globalTranslate39_eq
end InitE.FrontendStages.Declarations
