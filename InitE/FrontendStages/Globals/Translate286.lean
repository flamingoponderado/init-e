import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output286
import InitE.FrontendStages.Declarations.Data286
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate270
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate286_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) =
        some globalOutput286 := by
  dsimp only [simplified286, globalOutput286]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal286 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) := by trivial
theorem globalException286_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) = none := by rfl
#print axioms globalTranslate286_eq
end InitE.FrontendStages.Declarations
