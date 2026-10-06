import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output815
import InitE.FrontendStages.Declarations.Data815
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate799
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate815_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified815) =
        some globalOutput815 := by
  dsimp only [simplified815, globalOutput815]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal815 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified815) := by trivial
theorem globalException815_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified815) = none := by rfl
#print axioms globalTranslate815_eq
end InitE.FrontendStages.Declarations
