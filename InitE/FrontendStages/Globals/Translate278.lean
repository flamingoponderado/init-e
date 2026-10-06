import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output278
import InitE.FrontendStages.Declarations.Data278
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate262
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate278_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) =
        some globalOutput278 := by
  dsimp only [simplified278, globalOutput278]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal278 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) := by trivial
theorem globalException278_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified278) = none := by rfl
#print axioms globalTranslate278_eq
end InitE.FrontendStages.Declarations
