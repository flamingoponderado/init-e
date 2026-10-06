import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output428
import InitE.FrontendStages.Declarations.Data428
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate412
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate428_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) =
        some globalOutput428 := by
  dsimp only [simplified428, globalOutput428]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal428 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) := by trivial
theorem globalException428_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified428) = none := by rfl
#print axioms globalTranslate428_eq
end InitE.FrontendStages.Declarations
