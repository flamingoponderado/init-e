import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output96
import InitE.FrontendStages.Declarations.Data96
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate77
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate96_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) =
        some globalOutput96 := by
  dsimp only [simplified96, globalOutput96]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal96 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) := by trivial
theorem globalException96_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified96) = none := by rfl
#print axioms globalTranslate96_eq
end InitE.FrontendStages.Declarations
