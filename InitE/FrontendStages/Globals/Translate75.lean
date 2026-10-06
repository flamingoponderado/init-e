import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output75
import InitE.FrontendStages.Declarations.Data75
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate59
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate75_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified75) =
        some globalOutput75 := by
  dsimp only [simplified75, globalOutput75]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal75 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified75) := by trivial
theorem globalException75_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified75) = none := by rfl
#print axioms globalTranslate75_eq
end InitE.FrontendStages.Declarations
