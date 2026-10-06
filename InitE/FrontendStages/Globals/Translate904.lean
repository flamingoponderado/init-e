import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output904
import InitE.FrontendStages.Declarations.Data904
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate871
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate904_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified904) =
        some globalOutput904 := by
  dsimp only [simplified904, globalOutput904]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal904 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified904) := by trivial
theorem globalException904_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified904) = none := by rfl
#print axioms globalTranslate904_eq
end InitE.FrontendStages.Declarations
