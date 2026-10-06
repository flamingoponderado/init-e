import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output146
import InitE.FrontendStages.Declarations.Data146
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate130
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate146_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) =
        some globalOutput146 := by
  dsimp only [simplified146, globalOutput146]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal146 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) := by trivial
theorem globalException146_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified146) = none := by rfl
#print axioms globalTranslate146_eq
end InitE.FrontendStages.Declarations
