import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output618
import InitE.FrontendStages.Declarations.Data618
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate598
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate618_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified618) =
        some globalOutput618 := by
  dsimp only [simplified618, globalOutput618]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal618 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified618) := by trivial
theorem globalException618_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified618) = none := by rfl
#print axioms globalTranslate618_eq
end InitE.FrontendStages.Declarations
