import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output680
import InitE.FrontendStages.Declarations.Data680
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate649
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate680_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified680) =
        some globalOutput680 := by
  dsimp only [simplified680, globalOutput680]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal680 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified680) := by trivial
theorem globalException680_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified680) = none := by rfl
#print axioms globalTranslate680_eq
end InitE.FrontendStages.Declarations
