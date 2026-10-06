import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output424
import InitE.FrontendStages.Declarations.Data424
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate403
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate424_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) =
        some globalOutput424 := by
  dsimp only [simplified424, globalOutput424]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal424 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) := by trivial
theorem globalException424_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified424) = none := by rfl
#print axioms globalTranslate424_eq
end InitE.FrontendStages.Declarations
