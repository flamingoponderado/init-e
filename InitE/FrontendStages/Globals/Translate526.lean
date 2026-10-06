import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output526
import InitE.FrontendStages.Declarations.Data526
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate510
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate526_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) =
        some globalOutput526 := by
  dsimp only [simplified526, globalOutput526]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal526 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) := by trivial
theorem globalException526_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified526) = none := by rfl
#print axioms globalTranslate526_eq
end InitE.FrontendStages.Declarations
