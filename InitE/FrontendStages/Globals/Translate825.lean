import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output825
import InitE.FrontendStages.Declarations.Data825
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate809
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate825_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) =
        some globalOutput825 := by
  dsimp only [simplified825, globalOutput825]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal825 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) := by trivial
theorem globalException825_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) = none := by rfl
#print axioms globalTranslate825_eq
end InitE.FrontendStages.Declarations
