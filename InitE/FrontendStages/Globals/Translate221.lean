import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output221
import InitE.FrontendStages.Declarations.Data221
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate205
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate221_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified221) =
        some globalOutput221 := by
  dsimp only [simplified221, globalOutput221]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal221 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified221) := by trivial
theorem globalException221_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified221) = none := by rfl
#print axioms globalTranslate221_eq
end InitE.FrontendStages.Declarations
