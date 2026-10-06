import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output266
import InitE.FrontendStages.Declarations.Data266
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate250
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate266_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified266) =
        some globalOutput266 := by
  dsimp only [simplified266, globalOutput266]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal266 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified266) := by trivial
theorem globalException266_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified266) = none := by rfl
#print axioms globalTranslate266_eq
end InitE.FrontendStages.Declarations
