import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output630
import InitE.FrontendStages.Declarations.Data630
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate605
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate630_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified630) =
        some globalOutput630 := by
  dsimp only [simplified630, globalOutput630]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal630 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified630) := by trivial
theorem globalException630_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified630) = none := by rfl
#print axioms globalTranslate630_eq
end InitE.FrontendStages.Declarations
