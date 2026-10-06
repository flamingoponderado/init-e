import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output436
import InitE.FrontendStages.Declarations.Data436
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate420
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate436_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) =
        some globalOutput436 := by
  dsimp only [simplified436, globalOutput436]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal436 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) := by trivial
theorem globalException436_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified436) = none := by rfl
#print axioms globalTranslate436_eq
end InitE.FrontendStages.Declarations
