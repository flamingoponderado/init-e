import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output42
import InitE.FrontendStages.Declarations.Data42
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate25
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate42_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified42) =
        some globalOutput42 := by
  dsimp only [simplified42, globalOutput42]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal42 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified42) := by trivial
theorem globalException42_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified42) = none := by rfl
#print axioms globalTranslate42_eq
end InitE.FrontendStages.Declarations
