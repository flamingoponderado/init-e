import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output459
import InitE.FrontendStages.Declarations.Data459
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate443
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate459_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified459) =
        some globalOutput459 := by
  dsimp only [simplified459, globalOutput459]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal459 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified459) := by trivial
theorem globalException459_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified459) = none := by rfl
#print axioms globalTranslate459_eq
end InitE.FrontendStages.Declarations
