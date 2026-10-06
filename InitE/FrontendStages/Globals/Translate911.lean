import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output911
import InitE.FrontendStages.Declarations.Data911
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate878
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate911_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified911) =
        some globalOutput911 := by
  dsimp only [simplified911, globalOutput911]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal911 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified911) := by trivial
theorem globalException911_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified911) = none := by rfl
#print axioms globalTranslate911_eq
end InitE.FrontendStages.Declarations
