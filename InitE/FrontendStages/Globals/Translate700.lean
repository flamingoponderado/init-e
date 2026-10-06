import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output700
import InitE.FrontendStages.Declarations.Data700
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate684
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate700_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified700) =
        some globalOutput700 := by
  dsimp only [simplified700, globalOutput700]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal700 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified700) := by trivial
theorem globalException700_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified700) = none := by rfl
#print axioms globalTranslate700_eq
end InitE.FrontendStages.Declarations
