import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output65
import InitE.FrontendStages.Declarations.Data65
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate49
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate65_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) =
        some globalOutput65 := by
  dsimp only [simplified65, globalOutput65]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal65 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) := by trivial
theorem globalException65_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified65) = none := by rfl
#print axioms globalTranslate65_eq
end InitE.FrontendStages.Declarations
