import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output869
import InitE.FrontendStages.Declarations.Data869
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate853
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate869_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified869) =
        some globalOutput869 := by
  dsimp only [simplified869, globalOutput869]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal869 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified869) := by trivial
theorem globalException869_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified869) = none := by rfl
#print axioms globalTranslate869_eq
end InitE.FrontendStages.Declarations
