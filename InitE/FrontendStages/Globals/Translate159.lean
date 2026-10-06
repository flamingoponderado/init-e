import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output159
import InitE.FrontendStages.Declarations.Data159
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate142
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate159_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified159) =
        some globalOutput159 := by
  dsimp only [simplified159, globalOutput159]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal159 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified159) := by trivial
theorem globalException159_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified159) = none := by rfl
#print axioms globalTranslate159_eq
end InitE.FrontendStages.Declarations
