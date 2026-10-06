import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output152
import InitE.FrontendStages.Declarations.Data152
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate135
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate152_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified152) =
        some globalOutput152 := by
  dsimp only [simplified152, globalOutput152]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal152 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified152) := by trivial
theorem globalException152_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified152) = none := by rfl
#print axioms globalTranslate152_eq
end InitE.FrontendStages.Declarations
