import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output283
import InitE.FrontendStages.Declarations.Data283
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate267
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate283_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) =
        some globalOutput283 := by
  dsimp only [simplified283, globalOutput283]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal283 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) := by trivial
theorem globalException283_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified283) = none := by rfl
#print axioms globalTranslate283_eq
end InitE.FrontendStages.Declarations
