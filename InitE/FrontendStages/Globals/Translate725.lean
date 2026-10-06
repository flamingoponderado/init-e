import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output725
import InitE.FrontendStages.Declarations.Data725
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate708
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate725_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified725) =
        some globalOutput725 := by
  dsimp only [simplified725, globalOutput725]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal725 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified725) := by trivial
theorem globalException725_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified725) = none := by rfl
#print axioms globalTranslate725_eq
end InitE.FrontendStages.Declarations
