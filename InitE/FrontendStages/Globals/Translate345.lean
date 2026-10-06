import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output345
import InitE.FrontendStages.Declarations.Data345
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate329
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate345_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified345) =
        some globalOutput345 := by
  dsimp only [simplified345, globalOutput345]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal345 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified345) := by trivial
theorem globalException345_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified345) = none := by rfl
#print axioms globalTranslate345_eq
end InitE.FrontendStages.Declarations
