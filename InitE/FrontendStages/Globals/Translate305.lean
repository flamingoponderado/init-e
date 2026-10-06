import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output305
import InitE.FrontendStages.Declarations.Data305
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate288
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate305_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified305) =
        some globalOutput305 := by
  dsimp only [simplified305, globalOutput305]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal305 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified305) := by trivial
theorem globalException305_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified305) = none := by rfl
#print axioms globalTranslate305_eq
end InitE.FrontendStages.Declarations
