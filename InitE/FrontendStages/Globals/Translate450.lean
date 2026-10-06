import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output450
import InitE.FrontendStages.Declarations.Data450
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate429
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate450_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified450) =
        some globalOutput450 := by
  dsimp only [simplified450, globalOutput450]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal450 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified450) := by trivial
theorem globalException450_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified450) = none := by rfl
#print axioms globalTranslate450_eq
end InitE.FrontendStages.Declarations
