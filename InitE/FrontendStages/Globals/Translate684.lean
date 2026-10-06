import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output684
import InitE.FrontendStages.Declarations.Data684
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate668
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate684_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified684) =
        some globalOutput684 := by
  dsimp only [simplified684, globalOutput684]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal684 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified684) := by trivial
theorem globalException684_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified684) = none := by rfl
#print axioms globalTranslate684_eq
end InitE.FrontendStages.Declarations
