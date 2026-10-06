import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output238
import InitE.FrontendStages.Declarations.Data238
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate220
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate238_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) =
        some globalOutput238 := by
  dsimp only [simplified238, globalOutput238]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal238 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) := by trivial
theorem globalException238_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified238) = none := by rfl
#print axioms globalTranslate238_eq
end InitE.FrontendStages.Declarations
