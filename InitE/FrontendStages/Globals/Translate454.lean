import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output454
import InitE.FrontendStages.Declarations.Data454
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate433
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate454_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) =
        some globalOutput454 := by
  dsimp only [simplified454, globalOutput454]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal454 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) := by trivial
theorem globalException454_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) = none := by rfl
#print axioms globalTranslate454_eq
end InitE.FrontendStages.Declarations
