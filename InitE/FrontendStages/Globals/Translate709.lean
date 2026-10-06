import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output709
import InitE.FrontendStages.Declarations.Data709
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate693
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate709_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified709) =
        some globalOutput709 := by
  dsimp only [simplified709, globalOutput709]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal709 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified709) := by trivial
theorem globalException709_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified709) = none := by rfl
#print axioms globalTranslate709_eq
end InitE.FrontendStages.Declarations
