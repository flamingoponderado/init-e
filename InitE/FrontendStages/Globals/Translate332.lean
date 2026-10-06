import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output332
import InitE.FrontendStages.Declarations.Data332
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate316
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate332_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified332) =
        some globalOutput332 := by
  dsimp only [simplified332, globalOutput332]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal332 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified332) := by trivial
theorem globalException332_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified332) = none := by rfl
#print axioms globalTranslate332_eq
end InitE.FrontendStages.Declarations
