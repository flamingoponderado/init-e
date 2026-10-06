import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output636
import InitE.FrontendStages.Declarations.Data636
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate615
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate636_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified636) =
        some globalOutput636 := by
  dsimp only [simplified636, globalOutput636]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal636 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified636) := by trivial
theorem globalException636_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified636) = none := by rfl
#print axioms globalTranslate636_eq
end InitE.FrontendStages.Declarations
