import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output296
import InitE.FrontendStages.Declarations.Data296
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate280
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate296_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified296) =
        some globalOutput296 := by
  dsimp only [simplified296, globalOutput296]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal296 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified296) := by trivial
theorem globalException296_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified296) = none := by rfl
#print axioms globalTranslate296_eq
end InitE.FrontendStages.Declarations
