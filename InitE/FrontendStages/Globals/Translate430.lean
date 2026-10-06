import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output430
import InitE.FrontendStages.Declarations.Data430
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate414
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate430_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified430) =
        some globalOutput430 := by
  dsimp only [simplified430, globalOutput430]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal430 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified430) := by trivial
theorem globalException430_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified430) = none := by rfl
#print axioms globalTranslate430_eq
end InitE.FrontendStages.Declarations
