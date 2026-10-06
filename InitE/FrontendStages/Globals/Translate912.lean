import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output912
import InitE.FrontendStages.Declarations.Data912
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate879
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate912_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) =
        some globalOutput912 := by
  dsimp only [simplified912, globalOutput912]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal912 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) := by trivial
theorem globalException912_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified912) = none := by rfl
#print axioms globalTranslate912_eq
end InitE.FrontendStages.Declarations
