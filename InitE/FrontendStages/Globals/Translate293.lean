import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output293
import InitE.FrontendStages.Declarations.Data293
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate277
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate293_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified293) =
        some globalOutput293 := by
  dsimp only [simplified293, globalOutput293]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal293 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified293) := by trivial
theorem globalException293_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified293) = none := by rfl
#print axioms globalTranslate293_eq
end InitE.FrontendStages.Declarations
