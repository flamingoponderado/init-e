import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output510
import InitE.FrontendStages.Declarations.Data510
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate494
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate510_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified510) =
        some globalOutput510 := by
  dsimp only [simplified510, globalOutput510]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal510 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified510) := by trivial
theorem globalException510_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified510) = none := by rfl
#print axioms globalTranslate510_eq
end InitE.FrontendStages.Declarations
