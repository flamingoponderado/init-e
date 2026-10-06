import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output196
import InitE.FrontendStages.Declarations.Data196
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate176
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate196_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) =
        some globalOutput196 := by
  dsimp only [simplified196, globalOutput196]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal196 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) := by trivial
theorem globalException196_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified196) = none := by rfl
#print axioms globalTranslate196_eq
end InitE.FrontendStages.Declarations
