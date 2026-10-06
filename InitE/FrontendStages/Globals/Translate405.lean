import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output405
import InitE.FrontendStages.Declarations.Data405
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate389
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate405_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) =
        some globalOutput405 := by
  dsimp only [simplified405, globalOutput405]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal405 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) := by trivial
theorem globalException405_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified405) = none := by rfl
#print axioms globalTranslate405_eq
end InitE.FrontendStages.Declarations
