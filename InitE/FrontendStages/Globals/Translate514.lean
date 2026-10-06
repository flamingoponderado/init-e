import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output514
import InitE.FrontendStages.Declarations.Data514
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate498
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate514_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified514) =
        some globalOutput514 := by
  dsimp only [simplified514, globalOutput514]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal514 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified514) := by trivial
theorem globalException514_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified514) = none := by rfl
#print axioms globalTranslate514_eq
end InitE.FrontendStages.Declarations
