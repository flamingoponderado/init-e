import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output588
import InitE.FrontendStages.Declarations.Data588
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate572
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate588_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified588) =
        some globalOutput588 := by
  dsimp only [simplified588, globalOutput588]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal588 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified588) := by trivial
theorem globalException588_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified588) = none := by rfl
#print axioms globalTranslate588_eq
end InitE.FrontendStages.Declarations
