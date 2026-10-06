import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output603
import InitE.FrontendStages.Declarations.Data603
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate587
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate603_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) =
        some globalOutput603 := by
  dsimp only [simplified603, globalOutput603]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal603 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) := by trivial
theorem globalException603_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified603) = none := by rfl
#print axioms globalTranslate603_eq
end InitE.FrontendStages.Declarations
