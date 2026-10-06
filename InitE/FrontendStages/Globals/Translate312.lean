import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output312
import InitE.FrontendStages.Declarations.Data312
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate295
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate312_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified312) =
        some globalOutput312 := by
  dsimp only [simplified312, globalOutput312]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal312 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified312) := by trivial
theorem globalException312_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified312) = none := by rfl
#print axioms globalTranslate312_eq
end InitE.FrontendStages.Declarations
