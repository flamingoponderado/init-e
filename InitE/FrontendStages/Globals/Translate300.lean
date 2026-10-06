import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output300
import InitE.FrontendStages.Declarations.Data300
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate283
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate300_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) =
        some globalOutput300 := by
  dsimp only [simplified300, globalOutput300]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal300 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) := by trivial
theorem globalException300_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified300) = none := by rfl
#print axioms globalTranslate300_eq
end InitE.FrontendStages.Declarations
