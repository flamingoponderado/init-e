import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output68
import InitE.FrontendStages.Declarations.Data68
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate52
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate68_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) =
        some globalOutput68 := by
  dsimp only [simplified68, globalOutput68]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal68 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) := by trivial
theorem globalException68_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) = none := by rfl
#print axioms globalTranslate68_eq
end InitE.FrontendStages.Declarations
