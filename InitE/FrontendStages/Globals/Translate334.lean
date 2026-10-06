import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output334
import InitE.FrontendStages.Declarations.Data334
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate318
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate334_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) =
        some globalOutput334 := by
  dsimp only [simplified334, globalOutput334]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal334 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) := by trivial
theorem globalException334_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified334) = none := by rfl
#print axioms globalTranslate334_eq
end InitE.FrontendStages.Declarations
