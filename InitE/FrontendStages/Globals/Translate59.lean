import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output59
import InitE.FrontendStages.Declarations.Data59
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate43
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate59_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified59) =
        some globalOutput59 := by
  dsimp only [simplified59, globalOutput59]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal59 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified59) := by trivial
theorem globalException59_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified59) = none := by rfl
#print axioms globalTranslate59_eq
end InitE.FrontendStages.Declarations
