import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output280
import InitE.FrontendStages.Declarations.Data280
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate264
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate280_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) =
        some globalOutput280 := by
  dsimp only [simplified280, globalOutput280]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal280 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) := by trivial
theorem globalException280_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified280) = none := by rfl
#print axioms globalTranslate280_eq
end InitE.FrontendStages.Declarations
