import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output597
import InitE.FrontendStages.Declarations.Data597
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate581
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate597_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified597) =
        some globalOutput597 := by
  dsimp only [simplified597, globalOutput597]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal597 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified597) := by trivial
theorem globalException597_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified597) = none := by rfl
#print axioms globalTranslate597_eq
end InitE.FrontendStages.Declarations
