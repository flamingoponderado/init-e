import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output524
import InitE.FrontendStages.Declarations.Data524
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate508
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate524_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified524) =
        some globalOutput524 := by
  dsimp only [simplified524, globalOutput524]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal524 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified524) := by trivial
theorem globalException524_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified524) = none := by rfl
#print axioms globalTranslate524_eq
end InitE.FrontendStages.Declarations
