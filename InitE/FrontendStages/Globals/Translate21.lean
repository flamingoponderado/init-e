import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output21
import InitE.FrontendStages.Declarations.Data21
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate21_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) =
        some globalOutput21 := by
  dsimp only [simplified21, globalOutput21]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal21 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) := by trivial
theorem globalException21_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified21) = none := by rfl
#print axioms globalTranslate21_eq
end InitE.FrontendStages.Declarations
