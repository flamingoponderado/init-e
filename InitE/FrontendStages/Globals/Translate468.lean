import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output468
import InitE.FrontendStages.Declarations.Data468
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate452
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate468_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified468) =
        some globalOutput468 := by
  dsimp only [simplified468, globalOutput468]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal468 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified468) := by trivial
theorem globalException468_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified468) = none := by rfl
#print axioms globalTranslate468_eq
end InitE.FrontendStages.Declarations
