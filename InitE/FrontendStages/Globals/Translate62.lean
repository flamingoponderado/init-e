import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output62
import InitE.FrontendStages.Declarations.Data62
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate46
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate62_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) =
        some globalOutput62 := by
  dsimp only [simplified62, globalOutput62]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal62 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) := by trivial
theorem globalException62_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) = none := by rfl
#print axioms globalTranslate62_eq
end InitE.FrontendStages.Declarations
