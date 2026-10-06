import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output382
import InitE.FrontendStages.Declarations.Data382
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate366
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate382_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) =
        some globalOutput382 := by
  dsimp only [simplified382, globalOutput382]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal382 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) := by trivial
theorem globalException382_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified382) = none := by rfl
#print axioms globalTranslate382_eq
end InitE.FrontendStages.Declarations
