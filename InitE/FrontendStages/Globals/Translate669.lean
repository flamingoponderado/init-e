import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output669
import InitE.FrontendStages.Declarations.Data669
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate638
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate669_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified669) =
        some globalOutput669 := by
  dsimp only [simplified669, globalOutput669]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal669 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified669) := by trivial
theorem globalException669_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified669) = none := by rfl
#print axioms globalTranslate669_eq
end InitE.FrontendStages.Declarations
