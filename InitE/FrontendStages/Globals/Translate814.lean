import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output814
import InitE.FrontendStages.Declarations.Data814
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate798
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate814_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified814) =
        some globalOutput814 := by
  dsimp only [simplified814, globalOutput814]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal814 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified814) := by trivial
theorem globalException814_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified814) = none := by rfl
#print axioms globalTranslate814_eq
end InitE.FrontendStages.Declarations
