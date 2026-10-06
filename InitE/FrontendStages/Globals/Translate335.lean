import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output335
import InitE.FrontendStages.Declarations.Data335
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate319
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate335_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) =
        some globalOutput335 := by
  dsimp only [simplified335, globalOutput335]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal335 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) := by trivial
theorem globalException335_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) = none := by rfl
#print axioms globalTranslate335_eq
end InitE.FrontendStages.Declarations
