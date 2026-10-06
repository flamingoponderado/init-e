import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output694
import InitE.FrontendStages.Declarations.Data694
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate678
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate694_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified694) =
        some globalOutput694 := by
  dsimp only [simplified694, globalOutput694]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal694 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified694) := by trivial
theorem globalException694_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified694) = none := by rfl
#print axioms globalTranslate694_eq
end InitE.FrontendStages.Declarations
