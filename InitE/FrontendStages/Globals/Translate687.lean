import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output687
import InitE.FrontendStages.Declarations.Data687
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate671
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate687_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) =
        some globalOutput687 := by
  dsimp only [simplified687, globalOutput687]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal687 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) := by trivial
theorem globalException687_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified687) = none := by rfl
#print axioms globalTranslate687_eq
end InitE.FrontendStages.Declarations
