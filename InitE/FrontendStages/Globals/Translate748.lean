import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output748
import InitE.FrontendStages.Declarations.Data748
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate727
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate748_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) =
        some globalOutput748 := by
  dsimp only [simplified748, globalOutput748]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal748 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) := by trivial
theorem globalException748_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified748) = none := by rfl
#print axioms globalTranslate748_eq
end InitE.FrontendStages.Declarations
