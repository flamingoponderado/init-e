import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output797
import InitE.FrontendStages.Declarations.Data797
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate778
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate797_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) =
        some globalOutput797 := by
  dsimp only [simplified797, globalOutput797]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal797 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) := by trivial
theorem globalException797_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) = none := by rfl
#print axioms globalTranslate797_eq
end InitE.FrontendStages.Declarations
