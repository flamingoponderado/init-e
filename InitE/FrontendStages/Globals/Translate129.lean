import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output129
import InitE.FrontendStages.Declarations.Data129
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate113
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate129_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified129) =
        some globalOutput129 := by
  dsimp only [simplified129, globalOutput129]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal129 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified129) := by trivial
theorem globalException129_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified129) = none := by rfl
#print axioms globalTranslate129_eq
end InitE.FrontendStages.Declarations
