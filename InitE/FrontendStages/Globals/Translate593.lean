import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output593
import InitE.FrontendStages.Declarations.Data593
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate577
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate593_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified593) =
        some globalOutput593 := by
  dsimp only [simplified593, globalOutput593]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal593 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified593) := by trivial
theorem globalException593_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified593) = none := by rfl
#print axioms globalTranslate593_eq
end InitE.FrontendStages.Declarations
