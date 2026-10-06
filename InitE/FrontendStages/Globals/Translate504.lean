import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output504
import InitE.FrontendStages.Declarations.Data504
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate488
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate504_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified504) =
        some globalOutput504 := by
  dsimp only [simplified504, globalOutput504]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal504 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified504) := by trivial
theorem globalException504_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified504) = none := by rfl
#print axioms globalTranslate504_eq
end InitE.FrontendStages.Declarations
