import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output728
import InitE.FrontendStages.Declarations.Data728
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate711
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate728_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) =
        some globalOutput728 := by
  dsimp only [simplified728, globalOutput728]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal728 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) := by trivial
theorem globalException728_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) = none := by rfl
#print axioms globalTranslate728_eq
end InitE.FrontendStages.Declarations
