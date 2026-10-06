import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output508
import InitE.FrontendStages.Declarations.Data508
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate492
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate508_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified508) =
        some globalOutput508 := by
  dsimp only [simplified508, globalOutput508]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal508 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified508) := by trivial
theorem globalException508_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified508) = none := by rfl
#print axioms globalTranslate508_eq
end InitE.FrontendStages.Declarations
