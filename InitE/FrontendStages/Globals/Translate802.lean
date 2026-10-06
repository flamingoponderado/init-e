import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output802
import InitE.FrontendStages.Declarations.Data802
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate783
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate802_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified802) =
        some globalOutput802 := by
  dsimp only [simplified802, globalOutput802]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal802 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified802) := by trivial
theorem globalException802_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified802) = none := by rfl
#print axioms globalTranslate802_eq
end InitE.FrontendStages.Declarations
