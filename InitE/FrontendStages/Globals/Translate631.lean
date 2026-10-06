import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output631
import InitE.FrontendStages.Declarations.Data631
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate606
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate631_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) =
        some globalOutput631 := by
  dsimp only [simplified631, globalOutput631]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal631 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) := by trivial
theorem globalException631_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) = none := by rfl
#print axioms globalTranslate631_eq
end InitE.FrontendStages.Declarations
