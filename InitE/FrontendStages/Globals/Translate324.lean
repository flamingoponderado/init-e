import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output324
import InitE.FrontendStages.Declarations.Data324
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate308
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate324_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) =
        some globalOutput324 := by
  dsimp only [simplified324, globalOutput324]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal324 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) := by trivial
theorem globalException324_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified324) = none := by rfl
#print axioms globalTranslate324_eq
end InitE.FrontendStages.Declarations
