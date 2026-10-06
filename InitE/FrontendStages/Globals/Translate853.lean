import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output853
import InitE.FrontendStages.Declarations.Data853
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate836
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate853_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) =
        some globalOutput853 := by
  dsimp only [simplified853, globalOutput853]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal853 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) := by trivial
theorem globalException853_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) = none := by rfl
#print axioms globalTranslate853_eq
end InitE.FrontendStages.Declarations
