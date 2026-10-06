import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output207
import InitE.FrontendStages.Declarations.Data207
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate187
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate207_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) =
        some globalOutput207 := by
  dsimp only [simplified207, globalOutput207]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal207 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) := by trivial
theorem globalException207_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified207) = none := by rfl
#print axioms globalTranslate207_eq
end InitE.FrontendStages.Declarations
