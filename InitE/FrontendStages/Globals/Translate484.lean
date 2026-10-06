import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output484
import InitE.FrontendStages.Declarations.Data484
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate468
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate484_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) =
        some globalOutput484 := by
  dsimp only [simplified484, globalOutput484]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal484 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) := by trivial
theorem globalException484_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified484) = none := by rfl
#print axioms globalTranslate484_eq
end InitE.FrontendStages.Declarations
