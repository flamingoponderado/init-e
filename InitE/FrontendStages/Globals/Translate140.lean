import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output140
import InitE.FrontendStages.Declarations.Data140
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate124
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate140_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) =
        some globalOutput140 := by
  dsimp only [simplified140, globalOutput140]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal140 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) := by trivial
theorem globalException140_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) = none := by rfl
#print axioms globalTranslate140_eq
end InitE.FrontendStages.Declarations
