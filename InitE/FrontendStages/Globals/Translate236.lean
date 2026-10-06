import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output236
import InitE.FrontendStages.Declarations.Data236
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate218
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate236_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) =
        some globalOutput236 := by
  dsimp only [simplified236, globalOutput236]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal236 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) := by trivial
theorem globalException236_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) = none := by rfl
#print axioms globalTranslate236_eq
end InitE.FrontendStages.Declarations
