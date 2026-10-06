import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output780
import InitE.FrontendStages.Declarations.Data780
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate764
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate780_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) =
        some globalOutput780 := by
  dsimp only [simplified780, globalOutput780]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal780 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) := by trivial
theorem globalException780_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified780) = none := by rfl
#print axioms globalTranslate780_eq
end InitE.FrontendStages.Declarations
