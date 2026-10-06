import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output148
import InitE.FrontendStages.Declarations.Data148
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate131
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate148_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified148) =
        some globalOutput148 := by
  dsimp only [simplified148, globalOutput148]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal148 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified148) := by trivial
theorem globalException148_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified148) = none := by rfl
#print axioms globalTranslate148_eq
end InitE.FrontendStages.Declarations
