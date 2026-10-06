import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output194
import InitE.FrontendStages.Declarations.Data194
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate174
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate194_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) =
        some globalOutput194 := by
  dsimp only [simplified194, globalOutput194]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal194 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) := by trivial
theorem globalException194_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) = none := by rfl
#print axioms globalTranslate194_eq
end InitE.FrontendStages.Declarations
