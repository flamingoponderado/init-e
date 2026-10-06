import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output36
import InitE.FrontendStages.Declarations.Data36
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate20
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate36_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified36) =
        some globalOutput36 := by
  dsimp only [simplified36, globalOutput36]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal36 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified36) := by trivial
theorem globalException36_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified36) = none := by rfl
#print axioms globalTranslate36_eq
end InitE.FrontendStages.Declarations
