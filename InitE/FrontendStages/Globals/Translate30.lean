import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output30
import InitE.FrontendStages.Declarations.Data30
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate30_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) =
        some globalOutput30 := by
  dsimp only [simplified30, globalOutput30]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal30 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) := by trivial
theorem globalException30_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified30) = none := by rfl
#print axioms globalTranslate30_eq
end InitE.FrontendStages.Declarations
