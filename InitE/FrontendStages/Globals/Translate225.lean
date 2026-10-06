import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output225
import InitE.FrontendStages.Declarations.Data225
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate207
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate225_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified225) =
        some globalOutput225 := by
  dsimp only [simplified225, globalOutput225]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal225 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified225) := by trivial
theorem globalException225_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified225) = none := by rfl
#print axioms globalTranslate225_eq
end InitE.FrontendStages.Declarations
