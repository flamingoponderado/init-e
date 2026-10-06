import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output317
import InitE.FrontendStages.Declarations.Data317
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate301
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate317_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) =
        some globalOutput317 := by
  dsimp only [simplified317, globalOutput317]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal317 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) := by trivial
theorem globalException317_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) = none := by rfl
#print axioms globalTranslate317_eq
end InitE.FrontendStages.Declarations
