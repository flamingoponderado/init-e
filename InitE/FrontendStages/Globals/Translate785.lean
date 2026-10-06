import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output785
import InitE.FrontendStages.Declarations.Data785
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate769
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate785_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified785) =
        some globalOutput785 := by
  dsimp only [simplified785, globalOutput785]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal785 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified785) := by trivial
theorem globalException785_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified785) = none := by rfl
#print axioms globalTranslate785_eq
end InitE.FrontendStages.Declarations
