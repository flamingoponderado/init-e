import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output859
import InitE.FrontendStages.Declarations.Data859
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate842
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate859_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) =
        some globalOutput859 := by
  dsimp only [simplified859, globalOutput859]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal859 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) := by trivial
theorem globalException859_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified859) = none := by rfl
#print axioms globalTranslate859_eq
end InitE.FrontendStages.Declarations
