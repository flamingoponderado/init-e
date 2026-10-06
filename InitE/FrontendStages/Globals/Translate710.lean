import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output710
import InitE.FrontendStages.Declarations.Data710
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate694
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate710_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified710) =
        some globalOutput710 := by
  dsimp only [simplified710, globalOutput710]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal710 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified710) := by trivial
theorem globalException710_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified710) = none := by rfl
#print axioms globalTranslate710_eq
end InitE.FrontendStages.Declarations
