import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output106
import InitE.FrontendStages.Declarations.Data106
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate84
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate106_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified106) =
        some globalOutput106 := by
  dsimp only [simplified106, globalOutput106]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal106 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified106) := by trivial
theorem globalException106_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified106) = none := by rfl
#print axioms globalTranslate106_eq
end InitE.FrontendStages.Declarations
