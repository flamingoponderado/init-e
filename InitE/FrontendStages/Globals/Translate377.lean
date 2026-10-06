import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output377
import InitE.FrontendStages.Declarations.Data377
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate361
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate377_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) =
        some globalOutput377 := by
  dsimp only [simplified377, globalOutput377]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal377 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) := by trivial
theorem globalException377_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) = none := by rfl
#print axioms globalTranslate377_eq
end InitE.FrontendStages.Declarations
