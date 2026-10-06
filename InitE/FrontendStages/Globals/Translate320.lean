import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output320
import InitE.FrontendStages.Declarations.Data320
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate304
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate320_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified320) =
        some globalOutput320 := by
  dsimp only [simplified320, globalOutput320]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal320 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified320) := by trivial
theorem globalException320_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified320) = none := by rfl
#print axioms globalTranslate320_eq
end InitE.FrontendStages.Declarations
