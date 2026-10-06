import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output88
import InitE.FrontendStages.Declarations.Data88
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate72
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate88_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) =
        some globalOutput88 := by
  dsimp only [simplified88, globalOutput88]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal88 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) := by trivial
theorem globalException88_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified88) = none := by rfl
#print axioms globalTranslate88_eq
end InitE.FrontendStages.Declarations
