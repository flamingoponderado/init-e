import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output620
import InitE.FrontendStages.Declarations.Data620
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate600
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate620_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) =
        some globalOutput620 := by
  dsimp only [simplified620, globalOutput620]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal620 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) := by trivial
theorem globalException620_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) = none := by rfl
#print axioms globalTranslate620_eq
end InitE.FrontendStages.Declarations
