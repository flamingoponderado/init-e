import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output124
import InitE.FrontendStages.Declarations.Data124
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate108
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate124_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified124) =
        some globalOutput124 := by
  dsimp only [simplified124, globalOutput124]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal124 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified124) := by trivial
theorem globalException124_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified124) = none := by rfl
#print axioms globalTranslate124_eq
end InitE.FrontendStages.Declarations
