import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output205
import InitE.FrontendStages.Declarations.Data205
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate185
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate205_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified205) =
        some globalOutput205 := by
  dsimp only [simplified205, globalOutput205]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal205 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified205) := by trivial
theorem globalException205_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified205) = none := by rfl
#print axioms globalTranslate205_eq
end InitE.FrontendStages.Declarations
