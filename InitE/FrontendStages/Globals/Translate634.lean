import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output634
import InitE.FrontendStages.Declarations.Data634
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate609
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate634_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) =
        some globalOutput634 := by
  dsimp only [simplified634, globalOutput634]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal634 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) := by trivial
theorem globalException634_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified634) = none := by rfl
#print axioms globalTranslate634_eq
end InitE.FrontendStages.Declarations
