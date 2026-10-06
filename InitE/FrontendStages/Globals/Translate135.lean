import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output135
import InitE.FrontendStages.Declarations.Data135
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate119
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate135_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) =
        some globalOutput135 := by
  dsimp only [simplified135, globalOutput135]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal135 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) := by trivial
theorem globalException135_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified135) = none := by rfl
#print axioms globalTranslate135_eq
end InitE.FrontendStages.Declarations
