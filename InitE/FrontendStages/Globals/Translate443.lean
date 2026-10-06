import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output443
import InitE.FrontendStages.Declarations.Data443
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate422
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate443_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified443) =
        some globalOutput443 := by
  dsimp only [simplified443, globalOutput443]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal443 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified443) := by trivial
theorem globalException443_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified443) = none := by rfl
#print axioms globalTranslate443_eq
end InitE.FrontendStages.Declarations
