import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output670
import InitE.FrontendStages.Declarations.Data670
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate639
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate670_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified670) =
        some globalOutput670 := by
  dsimp only [simplified670, globalOutput670]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal670 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified670) := by trivial
theorem globalException670_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified670) = none := by rfl
#print axioms globalTranslate670_eq
end InitE.FrontendStages.Declarations
