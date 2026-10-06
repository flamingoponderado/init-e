import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output111
import InitE.FrontendStages.Declarations.Data111
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate89
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate111_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) =
        some globalOutput111 := by
  dsimp only [simplified111, globalOutput111]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal111 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) := by trivial
theorem globalException111_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified111) = none := by rfl
#print axioms globalTranslate111_eq
end InitE.FrontendStages.Declarations
