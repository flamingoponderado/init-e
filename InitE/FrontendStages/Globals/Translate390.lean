import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output390
import InitE.FrontendStages.Declarations.Data390
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate374
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate390_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) =
        some globalOutput390 := by
  dsimp only [simplified390, globalOutput390]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal390 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) := by trivial
theorem globalException390_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) = none := by rfl
#print axioms globalTranslate390_eq
end InitE.FrontendStages.Declarations
