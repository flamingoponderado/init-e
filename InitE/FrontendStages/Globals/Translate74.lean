import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output74
import InitE.FrontendStages.Declarations.Data74
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate58
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate74_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified74) =
        some globalOutput74 := by
  dsimp only [simplified74, globalOutput74]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal74 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified74) := by trivial
theorem globalException74_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified74) = none := by rfl
#print axioms globalTranslate74_eq
end InitE.FrontendStages.Declarations
