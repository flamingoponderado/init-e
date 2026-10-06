import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output765
import InitE.FrontendStages.Declarations.Data765
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate746
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate765_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified765) =
        some globalOutput765 := by
  dsimp only [simplified765, globalOutput765]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal765 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified765) := by trivial
theorem globalException765_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified765) = none := by rfl
#print axioms globalTranslate765_eq
end InitE.FrontendStages.Declarations
