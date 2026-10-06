import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output571
import InitE.FrontendStages.Declarations.Data571
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate551
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate571_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) =
        some globalOutput571 := by
  dsimp only [simplified571, globalOutput571]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal571 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) := by trivial
theorem globalException571_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) = none := by rfl
#print axioms globalTranslate571_eq
end InitE.FrontendStages.Declarations
