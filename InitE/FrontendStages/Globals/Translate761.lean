import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output761
import InitE.FrontendStages.Declarations.Data761
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate742
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate761_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) =
        some globalOutput761 := by
  dsimp only [simplified761, globalOutput761]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal761 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) := by trivial
theorem globalException761_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified761) = none := by rfl
#print axioms globalTranslate761_eq
end InitE.FrontendStages.Declarations
