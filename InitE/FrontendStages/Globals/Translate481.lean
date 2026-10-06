import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output481
import InitE.FrontendStages.Declarations.Data481
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate465
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate481_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified481) =
        some globalOutput481 := by
  dsimp only [simplified481, globalOutput481]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal481 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified481) := by trivial
theorem globalException481_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified481) = none := by rfl
#print axioms globalTranslate481_eq
end InitE.FrontendStages.Declarations
