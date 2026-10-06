import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output447
import InitE.FrontendStages.Declarations.Data447
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate426
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate447_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) =
        some globalOutput447 := by
  dsimp only [simplified447, globalOutput447]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal447 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) := by trivial
theorem globalException447_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified447) = none := by rfl
#print axioms globalTranslate447_eq
end InitE.FrontendStages.Declarations
