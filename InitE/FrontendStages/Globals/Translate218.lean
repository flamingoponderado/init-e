import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output218
import InitE.FrontendStages.Declarations.Data218
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate202
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate218_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified218) =
        some globalOutput218 := by
  dsimp only [simplified218, globalOutput218]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal218 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified218) := by trivial
theorem globalException218_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified218) = none := by rfl
#print axioms globalTranslate218_eq
end InitE.FrontendStages.Declarations
