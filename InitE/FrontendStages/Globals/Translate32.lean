import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output32
import InitE.FrontendStages.Declarations.Data32
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate16
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate32_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified32) =
        some globalOutput32 := by
  dsimp only [simplified32, globalOutput32]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal32 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified32) := by trivial
theorem globalException32_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified32) = none := by rfl
#print axioms globalTranslate32_eq
end InitE.FrontendStages.Declarations
