import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output73
import InitE.FrontendStages.Declarations.Data73
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate57
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate73_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified73) =
        some globalOutput73 := by
  dsimp only [simplified73, globalOutput73]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal73 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified73) := by trivial
theorem globalException73_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified73) = none := by rfl
#print axioms globalTranslate73_eq
end InitE.FrontendStages.Declarations
