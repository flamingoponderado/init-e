import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output702
import InitE.FrontendStages.Declarations.Data702
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate686
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate702_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified702) =
        some globalOutput702 := by
  dsimp only [simplified702, globalOutput702]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal702 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified702) := by trivial
theorem globalException702_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified702) = none := by rfl
#print axioms globalTranslate702_eq
end InitE.FrontendStages.Declarations
