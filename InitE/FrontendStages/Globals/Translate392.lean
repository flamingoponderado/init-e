import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output392
import InitE.FrontendStages.Declarations.Data392
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate376
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate392_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) =
        some globalOutput392 := by
  dsimp only [simplified392, globalOutput392]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal392 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) := by trivial
theorem globalException392_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) = none := by rfl
#print axioms globalTranslate392_eq
end InitE.FrontendStages.Declarations
