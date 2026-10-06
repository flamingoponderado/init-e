import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output24
import InitE.FrontendStages.Declarations.Data24
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate24_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) =
        some globalOutput24 := by
  dsimp only [simplified24, globalOutput24]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal24 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) := by trivial
theorem globalException24_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified24) = none := by rfl
#print axioms globalTranslate24_eq
end InitE.FrontendStages.Declarations
