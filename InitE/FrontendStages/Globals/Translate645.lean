import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output645
import InitE.FrontendStages.Declarations.Data645
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate629
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate645_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) =
        some globalOutput645 := by
  dsimp only [simplified645, globalOutput645]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal645 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) := by trivial
theorem globalException645_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified645) = none := by rfl
#print axioms globalTranslate645_eq
end InitE.FrontendStages.Declarations
