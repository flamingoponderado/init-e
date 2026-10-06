import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output908
import InitE.FrontendStages.Declarations.Data908
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate875
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate908_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) =
        some globalOutput908 := by
  dsimp only [simplified908, globalOutput908]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal908 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) := by trivial
theorem globalException908_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) = none := by rfl
#print axioms globalTranslate908_eq
end InitE.FrontendStages.Declarations
