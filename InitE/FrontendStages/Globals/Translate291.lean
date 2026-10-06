import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output291
import InitE.FrontendStages.Declarations.Data291
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate275
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate291_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) =
        some globalOutput291 := by
  dsimp only [simplified291, globalOutput291]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal291 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) := by trivial
theorem globalException291_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified291) = none := by rfl
#print axioms globalTranslate291_eq
end InitE.FrontendStages.Declarations
