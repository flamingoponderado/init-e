import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output46
import InitE.FrontendStages.Declarations.Data46
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate29
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate46_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified46) =
        some globalOutput46 := by
  dsimp only [simplified46, globalOutput46]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal46 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified46) := by trivial
theorem globalException46_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified46) = none := by rfl
#print axioms globalTranslate46_eq
end InitE.FrontendStages.Declarations
