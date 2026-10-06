import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output58
import InitE.FrontendStages.Declarations.Data58
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate42
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate58_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified58) =
        some globalOutput58 := by
  dsimp only [simplified58, globalOutput58]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal58 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified58) := by trivial
theorem globalException58_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified58) = none := by rfl
#print axioms globalTranslate58_eq
end InitE.FrontendStages.Declarations
