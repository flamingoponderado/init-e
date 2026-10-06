import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output753
import InitE.FrontendStages.Declarations.Data753
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate737
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate753_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) =
        some globalOutput753 := by
  dsimp only [simplified753, globalOutput753]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal753 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) := by trivial
theorem globalException753_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified753) = none := by rfl
#print axioms globalTranslate753_eq
end InitE.FrontendStages.Declarations
