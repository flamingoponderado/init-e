import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output261
import InitE.FrontendStages.Declarations.Data261
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate238
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate261_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified261) =
        some globalOutput261 := by
  dsimp only [simplified261, globalOutput261]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal261 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified261) := by trivial
theorem globalException261_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified261) = none := by rfl
#print axioms globalTranslate261_eq
end InitE.FrontendStages.Declarations
