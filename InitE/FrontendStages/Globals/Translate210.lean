import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output210
import InitE.FrontendStages.Declarations.Data210
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate194
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate210_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified210) =
        some globalOutput210 := by
  dsimp only [simplified210, globalOutput210]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal210 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified210) := by trivial
theorem globalException210_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified210) = none := by rfl
#print axioms globalTranslate210_eq
end InitE.FrontendStages.Declarations
