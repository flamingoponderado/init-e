import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output855
import InitE.FrontendStages.Declarations.Data855
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate838
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate855_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) =
        some globalOutput855 := by
  dsimp only [simplified855, globalOutput855]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal855 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) := by trivial
theorem globalException855_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified855) = none := by rfl
#print axioms globalTranslate855_eq
end InitE.FrontendStages.Declarations
