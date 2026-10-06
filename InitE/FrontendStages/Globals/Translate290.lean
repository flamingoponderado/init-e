import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output290
import InitE.FrontendStages.Declarations.Data290
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate274
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate290_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) =
        some globalOutput290 := by
  dsimp only [simplified290, globalOutput290]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal290 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) := by trivial
theorem globalException290_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) = none := by rfl
#print axioms globalTranslate290_eq
end InitE.FrontendStages.Declarations
