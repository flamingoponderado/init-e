import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output239
import InitE.FrontendStages.Declarations.Data239
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate221
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate239_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified239) =
        some globalOutput239 := by
  dsimp only [simplified239, globalOutput239]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal239 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified239) := by trivial
theorem globalException239_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified239) = none := by rfl
#print axioms globalTranslate239_eq
end InitE.FrontendStages.Declarations
