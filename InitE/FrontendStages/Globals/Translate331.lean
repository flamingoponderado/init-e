import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output331
import InitE.FrontendStages.Declarations.Data331
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate315
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate331_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified331) =
        some globalOutput331 := by
  dsimp only [simplified331, globalOutput331]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal331 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified331) := by trivial
theorem globalException331_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified331) = none := by rfl
#print axioms globalTranslate331_eq
end InitE.FrontendStages.Declarations
