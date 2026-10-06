import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output696
import InitE.FrontendStages.Declarations.Data696
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate680
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate696_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified696) =
        some globalOutput696 := by
  dsimp only [simplified696, globalOutput696]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal696 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified696) := by trivial
theorem globalException696_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified696) = none := by rfl
#print axioms globalTranslate696_eq
end InitE.FrontendStages.Declarations
