import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output122
import InitE.FrontendStages.Declarations.Data122
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate106
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate122_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified122) =
        some globalOutput122 := by
  dsimp only [simplified122, globalOutput122]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal122 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified122) := by trivial
theorem globalException122_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified122) = none := by rfl
#print axioms globalTranslate122_eq
end InitE.FrontendStages.Declarations
