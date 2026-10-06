import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output523
import InitE.FrontendStages.Declarations.Data523
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate507
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate523_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) =
        some globalOutput523 := by
  dsimp only [simplified523, globalOutput523]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal523 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) := by trivial
theorem globalException523_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) = none := by rfl
#print axioms globalTranslate523_eq
end InitE.FrontendStages.Declarations
