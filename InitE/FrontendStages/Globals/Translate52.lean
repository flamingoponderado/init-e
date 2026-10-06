import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output52
import InitE.FrontendStages.Declarations.Data52
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate35
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate52_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified52) =
        some globalOutput52 := by
  dsimp only [simplified52, globalOutput52]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal52 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified52) := by trivial
theorem globalException52_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified52) = none := by rfl
#print axioms globalTranslate52_eq
end InitE.FrontendStages.Declarations
