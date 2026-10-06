import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output381
import InitE.FrontendStages.Declarations.Data381
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate365
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate381_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) =
        some globalOutput381 := by
  dsimp only [simplified381, globalOutput381]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal381 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) := by trivial
theorem globalException381_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) = none := by rfl
#print axioms globalTranslate381_eq
end InitE.FrontendStages.Declarations
