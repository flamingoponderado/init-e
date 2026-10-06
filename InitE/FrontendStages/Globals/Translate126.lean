import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output126
import InitE.FrontendStages.Declarations.Data126
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate110
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate126_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) =
        some globalOutput126 := by
  dsimp only [simplified126, globalOutput126]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal126 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) := by trivial
theorem globalException126_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified126) = none := by rfl
#print axioms globalTranslate126_eq
end InitE.FrontendStages.Declarations
