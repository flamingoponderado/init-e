import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output67
import InitE.FrontendStages.Declarations.Data67
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate51
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate67_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) =
        some globalOutput67 := by
  dsimp only [simplified67, globalOutput67]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal67 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) := by trivial
theorem globalException67_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified67) = none := by rfl
#print axioms globalTranslate67_eq
end InitE.FrontendStages.Declarations
