import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output172
import InitE.FrontendStages.Declarations.Data172
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate156
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate172_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified172) =
        some globalOutput172 := by
  dsimp only [simplified172, globalOutput172]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal172 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified172) := by trivial
theorem globalException172_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified172) = none := by rfl
#print axioms globalTranslate172_eq
end InitE.FrontendStages.Declarations
