import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output394
import InitE.FrontendStages.Declarations.Data394
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate378
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate394_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified394) =
        some globalOutput394 := by
  dsimp only [simplified394, globalOutput394]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal394 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified394) := by trivial
theorem globalException394_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified394) = none := by rfl
#print axioms globalTranslate394_eq
end InitE.FrontendStages.Declarations
