import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output667
import InitE.FrontendStages.Declarations.Data667
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate636
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate667_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified667) =
        some globalOutput667 := by
  dsimp only [simplified667, globalOutput667]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal667 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified667) := by trivial
theorem globalException667_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified667) = none := by rfl
#print axioms globalTranslate667_eq
end InitE.FrontendStages.Declarations
