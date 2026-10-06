import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output546
import InitE.FrontendStages.Declarations.Data546
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate530
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate546_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) =
        some globalOutput546 := by
  dsimp only [simplified546, globalOutput546]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal546 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) := by trivial
theorem globalException546_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified546) = none := by rfl
#print axioms globalTranslate546_eq
end InitE.FrontendStages.Declarations
