import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output107
import InitE.FrontendStages.Declarations.Data107
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate85
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate107_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified107) =
        some globalOutput107 := by
  dsimp only [simplified107, globalOutput107]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal107 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified107) := by trivial
theorem globalException107_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified107) = none := by rfl
#print axioms globalTranslate107_eq
end InitE.FrontendStages.Declarations
