import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output639
import InitE.FrontendStages.Declarations.Data639
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate618
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate639_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified639) =
        some globalOutput639 := by
  dsimp only [simplified639, globalOutput639]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal639 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified639) := by trivial
theorem globalException639_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified639) = none := by rfl
#print axioms globalTranslate639_eq
end InitE.FrontendStages.Declarations
