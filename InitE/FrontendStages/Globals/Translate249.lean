import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output249
import InitE.FrontendStages.Declarations.Data249
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate226
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate249_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified249) =
        some globalOutput249 := by
  dsimp only [simplified249, globalOutput249]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal249 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified249) := by trivial
theorem globalException249_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified249) = none := by rfl
#print axioms globalTranslate249_eq
end InitE.FrontendStages.Declarations
