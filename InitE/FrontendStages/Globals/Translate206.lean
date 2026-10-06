import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output206
import InitE.FrontendStages.Declarations.Data206
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate186
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate206_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified206) =
        some globalOutput206 := by
  dsimp only [simplified206, globalOutput206]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal206 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified206) := by trivial
theorem globalException206_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified206) = none := by rfl
#print axioms globalTranslate206_eq
end InitE.FrontendStages.Declarations
