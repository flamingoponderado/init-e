import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output358
import InitE.FrontendStages.Declarations.Data358
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate335
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate358_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified358) =
        some globalOutput358 := by
  dsimp only [simplified358, globalOutput358]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal358 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified358) := by trivial
theorem globalException358_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified358) = none := by rfl
#print axioms globalTranslate358_eq
end InitE.FrontendStages.Declarations
