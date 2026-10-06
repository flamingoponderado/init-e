import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output581
import InitE.FrontendStages.Declarations.Data581
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate561
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate581_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified581) =
        some globalOutput581 := by
  dsimp only [simplified581, globalOutput581]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal581 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified581) := by trivial
theorem globalException581_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified581) = none := by rfl
#print axioms globalTranslate581_eq
end InitE.FrontendStages.Declarations
