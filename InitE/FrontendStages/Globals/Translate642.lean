import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output642
import InitE.FrontendStages.Declarations.Data642
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate626
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate642_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified642) =
        some globalOutput642 := by
  dsimp only [simplified642, globalOutput642]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal642 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified642) := by trivial
theorem globalException642_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified642) = none := by rfl
#print axioms globalTranslate642_eq
end InitE.FrontendStages.Declarations
