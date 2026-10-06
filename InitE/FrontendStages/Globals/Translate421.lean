import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output421
import InitE.FrontendStages.Declarations.Data421
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate400
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate421_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) =
        some globalOutput421 := by
  dsimp only [simplified421, globalOutput421]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal421 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) := by trivial
theorem globalException421_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) = none := by rfl
#print axioms globalTranslate421_eq
end InitE.FrontendStages.Declarations
