import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output806
import InitE.FrontendStages.Declarations.Data806
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate787
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate806_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) =
        some globalOutput806 := by
  dsimp only [simplified806, globalOutput806]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal806 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) := by trivial
theorem globalException806_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified806) = none := by rfl
#print axioms globalTranslate806_eq
end InitE.FrontendStages.Declarations
