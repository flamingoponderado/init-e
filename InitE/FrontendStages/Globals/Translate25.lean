import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output25
import InitE.FrontendStages.Declarations.Data25
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate25_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) =
        some globalOutput25 := by
  dsimp only [simplified25, globalOutput25]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal25 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) := by trivial
theorem globalException25_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified25) = none := by rfl
#print axioms globalTranslate25_eq
end InitE.FrontendStages.Declarations
