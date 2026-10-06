import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output572
import InitE.FrontendStages.Declarations.Data572
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate552
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate572_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified572) =
        some globalOutput572 := by
  dsimp only [simplified572, globalOutput572]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal572 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified572) := by trivial
theorem globalException572_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified572) = none := by rfl
#print axioms globalTranslate572_eq
end InitE.FrontendStages.Declarations
