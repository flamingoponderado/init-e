import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output209
import InitE.FrontendStages.Declarations.Data209
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate193
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate209_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) =
        some globalOutput209 := by
  dsimp only [simplified209, globalOutput209]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal209 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) := by trivial
theorem globalException209_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) = none := by rfl
#print axioms globalTranslate209_eq
end InitE.FrontendStages.Declarations
