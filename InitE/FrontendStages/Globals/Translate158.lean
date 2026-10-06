import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output158
import InitE.FrontendStages.Declarations.Data158
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate141
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate158_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified158) =
        some globalOutput158 := by
  dsimp only [simplified158, globalOutput158]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal158 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified158) := by trivial
theorem globalException158_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified158) = none := by rfl
#print axioms globalTranslate158_eq
end InitE.FrontendStages.Declarations
