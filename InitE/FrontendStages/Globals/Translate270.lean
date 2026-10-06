import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output270
import InitE.FrontendStages.Declarations.Data270
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate254
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate270_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) =
        some globalOutput270 := by
  dsimp only [simplified270, globalOutput270]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal270 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) := by trivial
theorem globalException270_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified270) = none := by rfl
#print axioms globalTranslate270_eq
end InitE.FrontendStages.Declarations
