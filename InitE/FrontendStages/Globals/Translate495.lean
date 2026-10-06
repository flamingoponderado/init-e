import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output495
import InitE.FrontendStages.Declarations.Data495
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate479
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate495_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified495) =
        some globalOutput495 := by
  dsimp only [simplified495, globalOutput495]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal495 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified495) := by trivial
theorem globalException495_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified495) = none := by rfl
#print axioms globalTranslate495_eq
end InitE.FrontendStages.Declarations
