import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output192
import InitE.FrontendStages.Declarations.Data192
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate172
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate192_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified192) =
        some globalOutput192 := by
  dsimp only [simplified192, globalOutput192]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal192 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified192) := by trivial
theorem globalException192_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified192) = none := by rfl
#print axioms globalTranslate192_eq
end InitE.FrontendStages.Declarations
