import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output818
import InitE.FrontendStages.Declarations.Data818
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate802
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate818_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified818) =
        some globalOutput818 := by
  dsimp only [simplified818, globalOutput818]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal818 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified818) := by trivial
theorem globalException818_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified818) = none := by rfl
#print axioms globalTranslate818_eq
end InitE.FrontendStages.Declarations
