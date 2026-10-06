import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output187
import InitE.FrontendStages.Declarations.Data187
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate171
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate187_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) =
        some globalOutput187 := by
  dsimp only [simplified187, globalOutput187]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal187 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) := by trivial
theorem globalException187_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified187) = none := by rfl
#print axioms globalTranslate187_eq
end InitE.FrontendStages.Declarations
