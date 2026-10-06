import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output828
import InitE.FrontendStages.Declarations.Data828
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate812
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate828_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) =
        some globalOutput828 := by
  dsimp only [simplified828, globalOutput828]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal828 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) := by trivial
theorem globalException828_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified828) = none := by rfl
#print axioms globalTranslate828_eq
end InitE.FrontendStages.Declarations
