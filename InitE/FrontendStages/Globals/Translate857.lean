import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output857
import InitE.FrontendStages.Declarations.Data857
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate840
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate857_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) =
        some globalOutput857 := by
  dsimp only [simplified857, globalOutput857]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal857 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) := by trivial
theorem globalException857_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified857) = none := by rfl
#print axioms globalTranslate857_eq
end InitE.FrontendStages.Declarations
