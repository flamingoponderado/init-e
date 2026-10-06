import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output341
import InitE.FrontendStages.Declarations.Data341
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate325
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate341_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) =
        some globalOutput341 := by
  dsimp only [simplified341, globalOutput341]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal341 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) := by trivial
theorem globalException341_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified341) = none := by rfl
#print axioms globalTranslate341_eq
end InitE.FrontendStages.Declarations
