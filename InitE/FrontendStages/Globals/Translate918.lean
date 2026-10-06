import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output918
import InitE.FrontendStages.Declarations.Data918
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate901
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate918_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified918) =
        some globalOutput918 := by
  dsimp only [simplified918, globalOutput918]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal918 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified918) := by trivial
theorem globalException918_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified918) = none := by rfl
#print axioms globalTranslate918_eq
end InitE.FrontendStages.Declarations
