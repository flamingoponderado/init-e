import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output529
import InitE.FrontendStages.Declarations.Data529
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate513
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate529_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified529) =
        some globalOutput529 := by
  dsimp only [simplified529, globalOutput529]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal529 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified529) := by trivial
theorem globalException529_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified529) = none := by rfl
#print axioms globalTranslate529_eq
end InitE.FrontendStages.Declarations
