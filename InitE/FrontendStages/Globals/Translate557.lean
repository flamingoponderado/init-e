import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output557
import InitE.FrontendStages.Declarations.Data557
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate541
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate557_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified557) =
        some globalOutput557 := by
  dsimp only [simplified557, globalOutput557]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal557 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified557) := by trivial
theorem globalException557_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified557) = none := by rfl
#print axioms globalTranslate557_eq
end InitE.FrontendStages.Declarations
