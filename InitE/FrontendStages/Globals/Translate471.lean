import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output471
import InitE.FrontendStages.Declarations.Data471
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate455
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate471_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified471) =
        some globalOutput471 := by
  dsimp only [simplified471, globalOutput471]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal471 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified471) := by trivial
theorem globalException471_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified471) = none := by rfl
#print axioms globalTranslate471_eq
end InitE.FrontendStages.Declarations
