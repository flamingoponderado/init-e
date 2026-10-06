import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output173
import InitE.FrontendStages.Declarations.Data173
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate157
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate173_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified173) =
        some globalOutput173 := by
  dsimp only [simplified173, globalOutput173]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal173 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified173) := by trivial
theorem globalException173_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified173) = none := by rfl
#print axioms globalTranslate173_eq
end InitE.FrontendStages.Declarations
