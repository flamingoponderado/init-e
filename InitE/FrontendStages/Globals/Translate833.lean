import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output833
import InitE.FrontendStages.Declarations.Data833
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate817
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate833_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified833) =
        some globalOutput833 := by
  dsimp only [simplified833, globalOutput833]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal833 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified833) := by trivial
theorem globalException833_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified833) = none := by rfl
#print axioms globalTranslate833_eq
end InitE.FrontendStages.Declarations
