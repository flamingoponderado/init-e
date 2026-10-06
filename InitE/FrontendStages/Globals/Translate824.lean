import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output824
import InitE.FrontendStages.Declarations.Data824
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate808
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate824_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) =
        some globalOutput824 := by
  dsimp only [simplified824, globalOutput824]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal824 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) := by trivial
theorem globalException824_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) = none := by rfl
#print axioms globalTranslate824_eq
end InitE.FrontendStages.Declarations
