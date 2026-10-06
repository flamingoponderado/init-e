import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output51
import InitE.FrontendStages.Declarations.Data51
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate34
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate51_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified51) =
        some globalOutput51 := by
  dsimp only [simplified51, globalOutput51]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal51 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified51) := by trivial
theorem globalException51_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified51) = none := by rfl
#print axioms globalTranslate51_eq
end InitE.FrontendStages.Declarations
