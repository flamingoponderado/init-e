import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output376
import InitE.FrontendStages.Declarations.Data376
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate360
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate376_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified376) =
        some globalOutput376 := by
  dsimp only [simplified376, globalOutput376]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal376 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified376) := by trivial
theorem globalException376_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified376) = none := by rfl
#print axioms globalTranslate376_eq
end InitE.FrontendStages.Declarations
