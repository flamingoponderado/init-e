import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output509
import InitE.FrontendStages.Declarations.Data509
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate493
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate509_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) =
        some globalOutput509 := by
  dsimp only [simplified509, globalOutput509]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal509 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) := by trivial
theorem globalException509_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) = none := by rfl
#print axioms globalTranslate509_eq
end InitE.FrontendStages.Declarations
