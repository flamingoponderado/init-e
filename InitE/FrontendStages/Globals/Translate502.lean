import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output502
import InitE.FrontendStages.Declarations.Data502
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate486
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate502_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) =
        some globalOutput502 := by
  dsimp only [simplified502, globalOutput502]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal502 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) := by trivial
theorem globalException502_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) = none := by rfl
#print axioms globalTranslate502_eq
end InitE.FrontendStages.Declarations
