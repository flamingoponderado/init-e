import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output819
import InitE.FrontendStages.Declarations.Data819
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate803
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate819_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified819) =
        some globalOutput819 := by
  dsimp only [simplified819, globalOutput819]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal819 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified819) := by trivial
theorem globalException819_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified819) = none := by rfl
#print axioms globalTranslate819_eq
end InitE.FrontendStages.Declarations
