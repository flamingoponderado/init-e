import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output905
import InitE.FrontendStages.Declarations.Data905
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate872
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate905_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified905) =
        some globalOutput905 := by
  dsimp only [simplified905, globalOutput905]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal905 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified905) := by trivial
theorem globalException905_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified905) = none := by rfl
#print axioms globalTranslate905_eq
end InitE.FrontendStages.Declarations
