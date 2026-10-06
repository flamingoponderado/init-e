import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output764
import InitE.FrontendStages.Declarations.Data764
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate745
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate764_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified764) =
        some globalOutput764 := by
  dsimp only [simplified764, globalOutput764]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal764 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified764) := by trivial
theorem globalException764_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified764) = none := by rfl
#print axioms globalTranslate764_eq
end InitE.FrontendStages.Declarations
