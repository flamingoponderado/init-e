import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output740
import InitE.FrontendStages.Declarations.Data740
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate718
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate740_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) =
        some globalOutput740 := by
  dsimp only [simplified740, globalOutput740]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal740 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) := by trivial
theorem globalException740_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) = none := by rfl
#print axioms globalTranslate740_eq
end InitE.FrontendStages.Declarations
