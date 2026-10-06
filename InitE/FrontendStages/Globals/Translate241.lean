import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output241
import InitE.FrontendStages.Declarations.Data241
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate222
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate241_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) =
        some globalOutput241 := by
  dsimp only [simplified241, globalOutput241]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal241 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) := by trivial
theorem globalException241_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) = none := by rfl
#print axioms globalTranslate241_eq
end InitE.FrontendStages.Declarations
