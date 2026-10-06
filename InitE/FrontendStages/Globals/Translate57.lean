import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output57
import InitE.FrontendStages.Declarations.Data57
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate41
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate57_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified57) =
        some globalOutput57 := by
  dsimp only [simplified57, globalOutput57]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal57 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified57) := by trivial
theorem globalException57_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified57) = none := by rfl
#print axioms globalTranslate57_eq
end InitE.FrontendStages.Declarations
