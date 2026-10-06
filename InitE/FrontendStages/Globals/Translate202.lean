import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output202
import InitE.FrontendStages.Declarations.Data202
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate182
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate202_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) =
        some globalOutput202 := by
  dsimp only [simplified202, globalOutput202]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal202 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) := by trivial
theorem globalException202_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified202) = none := by rfl
#print axioms globalTranslate202_eq
end InitE.FrontendStages.Declarations
