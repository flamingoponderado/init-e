import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output515
import InitE.FrontendStages.Declarations.Data515
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate499
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate515_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified515) =
        some globalOutput515 := by
  dsimp only [simplified515, globalOutput515]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal515 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified515) := by trivial
theorem globalException515_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified515) = none := by rfl
#print axioms globalTranslate515_eq
end InitE.FrontendStages.Declarations
