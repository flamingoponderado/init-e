import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output555
import InitE.FrontendStages.Declarations.Data555
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate539
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate555_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) =
        some globalOutput555 := by
  dsimp only [simplified555, globalOutput555]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal555 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) := by trivial
theorem globalException555_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified555) = none := by rfl
#print axioms globalTranslate555_eq
end InitE.FrontendStages.Declarations
