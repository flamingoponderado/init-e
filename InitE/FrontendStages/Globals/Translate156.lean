import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output156
import InitE.FrontendStages.Declarations.Data156
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate139
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate156_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) =
        some globalOutput156 := by
  dsimp only [simplified156, globalOutput156]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal156 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) := by trivial
theorem globalException156_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified156) = none := by rfl
#print axioms globalTranslate156_eq
end InitE.FrontendStages.Declarations
