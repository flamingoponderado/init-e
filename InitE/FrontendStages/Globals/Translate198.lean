import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output198
import InitE.FrontendStages.Declarations.Data198
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate178
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate198_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified198) =
        some globalOutput198 := by
  dsimp only [simplified198, globalOutput198]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal198 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified198) := by trivial
theorem globalException198_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified198) = none := by rfl
#print axioms globalTranslate198_eq
end InitE.FrontendStages.Declarations
