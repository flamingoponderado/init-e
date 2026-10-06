import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output413
import InitE.FrontendStages.Declarations.Data413
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate392
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate413_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified413) =
        some globalOutput413 := by
  dsimp only [simplified413, globalOutput413]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal413 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified413) := by trivial
theorem globalException413_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified413) = none := by rfl
#print axioms globalTranslate413_eq
end InitE.FrontendStages.Declarations
