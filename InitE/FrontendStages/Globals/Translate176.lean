import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output176
import InitE.FrontendStages.Declarations.Data176
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate160
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate176_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) =
        some globalOutput176 := by
  dsimp only [simplified176, globalOutput176]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal176 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) := by trivial
theorem globalException176_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified176) = none := by rfl
#print axioms globalTranslate176_eq
end InitE.FrontendStages.Declarations
