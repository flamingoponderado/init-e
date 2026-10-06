import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output449
import InitE.FrontendStages.Declarations.Data449
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate428
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate449_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) =
        some globalOutput449 := by
  dsimp only [simplified449, globalOutput449]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal449 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) := by trivial
theorem globalException449_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified449) = none := by rfl
#print axioms globalTranslate449_eq
end InitE.FrontendStages.Declarations
