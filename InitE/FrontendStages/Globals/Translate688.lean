import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output688
import InitE.FrontendStages.Declarations.Data688
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate672
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate688_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified688) =
        some globalOutput688 := by
  dsimp only [simplified688, globalOutput688]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal688 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified688) := by trivial
theorem globalException688_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified688) = none := by rfl
#print axioms globalTranslate688_eq
end InitE.FrontendStages.Declarations
