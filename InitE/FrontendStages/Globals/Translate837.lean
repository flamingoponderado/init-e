import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output837
import InitE.FrontendStages.Declarations.Data837
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate821
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate837_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) =
        some globalOutput837 := by
  dsimp only [simplified837, globalOutput837]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal837 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) := by trivial
theorem globalException837_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified837) = none := by rfl
#print axioms globalTranslate837_eq
end InitE.FrontendStages.Declarations
