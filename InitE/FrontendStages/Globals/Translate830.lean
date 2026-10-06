import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output830
import InitE.FrontendStages.Declarations.Data830
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate814
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate830_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) =
        some globalOutput830 := by
  dsimp only [simplified830, globalOutput830]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal830 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) := by trivial
theorem globalException830_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified830) = none := by rfl
#print axioms globalTranslate830_eq
end InitE.FrontendStages.Declarations
