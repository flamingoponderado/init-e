import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output255
import InitE.FrontendStages.Declarations.Data255
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate232
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate255_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) =
        some globalOutput255 := by
  dsimp only [simplified255, globalOutput255]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal255 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) := by trivial
theorem globalException255_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified255) = none := by rfl
#print axioms globalTranslate255_eq
end InitE.FrontendStages.Declarations
