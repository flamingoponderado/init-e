import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output76
import InitE.FrontendStages.Declarations.Data76
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate60
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate76_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified76) =
        some globalOutput76 := by
  dsimp only [simplified76, globalOutput76]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal76 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified76) := by trivial
theorem globalException76_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified76) = none := by rfl
#print axioms globalTranslate76_eq
end InitE.FrontendStages.Declarations
