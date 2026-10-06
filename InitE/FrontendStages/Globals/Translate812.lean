import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output812
import InitE.FrontendStages.Declarations.Data812
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate796
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate812_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified812) =
        some globalOutput812 := by
  dsimp only [simplified812, globalOutput812]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal812 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified812) := by trivial
theorem globalException812_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified812) = none := by rfl
#print axioms globalTranslate812_eq
end InitE.FrontendStages.Declarations
