import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output313
import InitE.FrontendStages.Declarations.Data313
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate296
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate313_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) =
        some globalOutput313 := by
  dsimp only [simplified313, globalOutput313]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal313 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) := by trivial
theorem globalException313_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) = none := by rfl
#print axioms globalTranslate313_eq
end InitE.FrontendStages.Declarations
