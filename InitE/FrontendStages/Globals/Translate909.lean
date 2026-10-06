import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output909
import InitE.FrontendStages.Declarations.Data909
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate876
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate909_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified909) =
        some globalOutput909 := by
  dsimp only [simplified909, globalOutput909]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal909 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified909) := by trivial
theorem globalException909_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified909) = none := by rfl
#print axioms globalTranslate909_eq
end InitE.FrontendStages.Declarations
