import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output844
import InitE.FrontendStages.Declarations.Data844
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate828
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate844_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified844) =
        some globalOutput844 := by
  dsimp only [simplified844, globalOutput844]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal844 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified844) := by trivial
theorem globalException844_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified844) = none := by rfl
#print axioms globalTranslate844_eq
end InitE.FrontendStages.Declarations
