import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output867
import InitE.FrontendStages.Declarations.Data867
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate851
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate867_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified867) =
        some globalOutput867 := by
  dsimp only [simplified867, globalOutput867]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal867 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified867) := by trivial
theorem globalException867_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified867) = none := by rfl
#print axioms globalTranslate867_eq
end InitE.FrontendStages.Declarations
