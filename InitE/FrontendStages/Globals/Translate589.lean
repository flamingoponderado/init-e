import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output589
import InitE.FrontendStages.Declarations.Data589
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate573
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate589_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified589) =
        some globalOutput589 := by
  dsimp only [simplified589, globalOutput589]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal589 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified589) := by trivial
theorem globalException589_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified589) = none := by rfl
#print axioms globalTranslate589_eq
end InitE.FrontendStages.Declarations
