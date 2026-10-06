import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output704
import InitE.FrontendStages.Declarations.Data704
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate688
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate704_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) =
        some globalOutput704 := by
  dsimp only [simplified704, globalOutput704]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal704 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) := by trivial
theorem globalException704_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) = none := by rfl
#print axioms globalTranslate704_eq
end InitE.FrontendStages.Declarations
