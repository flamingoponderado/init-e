import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output304
import InitE.FrontendStages.Declarations.Data304
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate287
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate304_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified304) =
        some globalOutput304 := by
  dsimp only [simplified304, globalOutput304]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal304 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified304) := by trivial
theorem globalException304_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified304) = none := by rfl
#print axioms globalTranslate304_eq
end InitE.FrontendStages.Declarations
