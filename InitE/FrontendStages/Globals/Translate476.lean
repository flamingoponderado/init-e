import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output476
import InitE.FrontendStages.Declarations.Data476
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate460
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate476_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified476) =
        some globalOutput476 := by
  dsimp only [simplified476, globalOutput476]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal476 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified476) := by trivial
theorem globalException476_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified476) = none := by rfl
#print axioms globalTranslate476_eq
end InitE.FrontendStages.Declarations
