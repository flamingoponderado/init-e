import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output831
import InitE.FrontendStages.Declarations.Data831
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate815
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate831_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) =
        some globalOutput831 := by
  dsimp only [simplified831, globalOutput831]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal831 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) := by trivial
theorem globalException831_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified831) = none := by rfl
#print axioms globalTranslate831_eq
end InitE.FrontendStages.Declarations
