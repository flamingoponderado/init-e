import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output234
import InitE.FrontendStages.Declarations.Data234
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate216
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate234_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified234) =
        some globalOutput234 := by
  dsimp only [simplified234, globalOutput234]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal234 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified234) := by trivial
theorem globalException234_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified234) = none := by rfl
#print axioms globalTranslate234_eq
end InitE.FrontendStages.Declarations
