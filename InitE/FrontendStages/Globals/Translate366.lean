import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output366
import InitE.FrontendStages.Declarations.Data366
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate343
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate366_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified366) =
        some globalOutput366 := by
  dsimp only [simplified366, globalOutput366]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal366 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified366) := by trivial
theorem globalException366_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified366) = none := by rfl
#print axioms globalTranslate366_eq
end InitE.FrontendStages.Declarations
