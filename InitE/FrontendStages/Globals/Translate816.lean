import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output816
import InitE.FrontendStages.Declarations.Data816
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate800
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate816_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) =
        some globalOutput816 := by
  dsimp only [simplified816, globalOutput816]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal816 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) := by trivial
theorem globalException816_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) = none := by rfl
#print axioms globalTranslate816_eq
end InitE.FrontendStages.Declarations
