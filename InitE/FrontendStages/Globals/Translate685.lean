import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output685
import InitE.FrontendStages.Declarations.Data685
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate669
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate685_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) =
        some globalOutput685 := by
  dsimp only [simplified685, globalOutput685]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal685 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) := by trivial
theorem globalException685_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified685) = none := by rfl
#print axioms globalTranslate685_eq
end InitE.FrontendStages.Declarations
