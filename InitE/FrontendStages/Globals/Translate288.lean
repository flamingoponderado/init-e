import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output288
import InitE.FrontendStages.Declarations.Data288
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate272
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate288_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) =
        some globalOutput288 := by
  dsimp only [simplified288, globalOutput288]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal288 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) := by trivial
theorem globalException288_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) = none := by rfl
#print axioms globalTranslate288_eq
end InitE.FrontendStages.Declarations
