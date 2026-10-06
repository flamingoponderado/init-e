import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output456
import InitE.FrontendStages.Declarations.Data456
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate435
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate456_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) =
        some globalOutput456 := by
  dsimp only [simplified456, globalOutput456]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal456 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) := by trivial
theorem globalException456_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified456) = none := by rfl
#print axioms globalTranslate456_eq
end InitE.FrontendStages.Declarations
