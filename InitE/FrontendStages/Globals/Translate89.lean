import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output89
import InitE.FrontendStages.Declarations.Data89
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate73
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate89_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) =
        some globalOutput89 := by
  dsimp only [simplified89, globalOutput89]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal89 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) := by trivial
theorem globalException89_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) = none := by rfl
#print axioms globalTranslate89_eq
end InitE.FrontendStages.Declarations
