import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output309
import InitE.FrontendStages.Declarations.Data309
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate292
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate309_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified309) =
        some globalOutput309 := by
  dsimp only [simplified309, globalOutput309]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal309 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified309) := by trivial
theorem globalException309_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified309) = none := by rfl
#print axioms globalTranslate309_eq
end InitE.FrontendStages.Declarations
