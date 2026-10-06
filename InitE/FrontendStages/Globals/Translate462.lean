import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output462
import InitE.FrontendStages.Declarations.Data462
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate446
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate462_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified462) =
        some globalOutput462 := by
  dsimp only [simplified462, globalOutput462]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal462 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified462) := by trivial
theorem globalException462_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified462) = none := by rfl
#print axioms globalTranslate462_eq
end InitE.FrontendStages.Declarations
