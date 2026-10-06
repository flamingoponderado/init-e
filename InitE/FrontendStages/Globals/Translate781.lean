import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output781
import InitE.FrontendStages.Declarations.Data781
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate765
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate781_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified781) =
        some globalOutput781 := by
  dsimp only [simplified781, globalOutput781]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal781 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified781) := by trivial
theorem globalException781_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified781) = none := by rfl
#print axioms globalTranslate781_eq
end InitE.FrontendStages.Declarations
