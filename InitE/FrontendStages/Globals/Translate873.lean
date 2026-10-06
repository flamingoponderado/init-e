import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output873
import InitE.FrontendStages.Declarations.Data873
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate857
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate873_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified873) =
        some globalOutput873 := by
  dsimp only [simplified873, globalOutput873]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal873 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified873) := by trivial
theorem globalException873_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified873) = none := by rfl
#print axioms globalTranslate873_eq
end InitE.FrontendStages.Declarations
