import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output822
import InitE.FrontendStages.Declarations.Data822
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate806
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate822_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified822) =
        some globalOutput822 := by
  dsimp only [simplified822, globalOutput822]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal822 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified822) := by trivial
theorem globalException822_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified822) = none := by rfl
#print axioms globalTranslate822_eq
end InitE.FrontendStages.Declarations
