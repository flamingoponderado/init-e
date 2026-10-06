import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output237
import InitE.FrontendStages.Declarations.Data237
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate219
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate237_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified237) =
        some globalOutput237 := by
  dsimp only [simplified237, globalOutput237]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal237 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified237) := by trivial
theorem globalException237_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified237) = none := by rfl
#print axioms globalTranslate237_eq
end InitE.FrontendStages.Declarations
