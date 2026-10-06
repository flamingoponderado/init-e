import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output550
import InitE.FrontendStages.Declarations.Data550
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate534
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate550_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified550) =
        some globalOutput550 := by
  dsimp only [simplified550, globalOutput550]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal550 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified550) := by trivial
theorem globalException550_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified550) = none := by rfl
#print axioms globalTranslate550_eq
end InitE.FrontendStages.Declarations
