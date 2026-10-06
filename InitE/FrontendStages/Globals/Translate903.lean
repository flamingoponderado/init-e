import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output903
import InitE.FrontendStages.Declarations.Data903
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate870
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate903_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified903) =
        some globalOutput903 := by
  dsimp only [simplified903, globalOutput903]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal903 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified903) := by trivial
theorem globalException903_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified903) = none := by rfl
#print axioms globalTranslate903_eq
end InitE.FrontendStages.Declarations
