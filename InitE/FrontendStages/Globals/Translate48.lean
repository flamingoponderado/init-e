import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output48
import InitE.FrontendStages.Declarations.Data48
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate31
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate48_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified48) =
        some globalOutput48 := by
  dsimp only [simplified48, globalOutput48]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal48 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified48) := by trivial
theorem globalException48_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified48) = none := by rfl
#print axioms globalTranslate48_eq
end InitE.FrontendStages.Declarations
