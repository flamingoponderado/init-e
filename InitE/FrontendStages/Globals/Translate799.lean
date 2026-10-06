import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output799
import InitE.FrontendStages.Declarations.Data799
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate780
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate799_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified799) =
        some globalOutput799 := by
  dsimp only [simplified799, globalOutput799]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal799 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified799) := by trivial
theorem globalException799_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified799) = none := by rfl
#print axioms globalTranslate799_eq
end InitE.FrontendStages.Declarations
