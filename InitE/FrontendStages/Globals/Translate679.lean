import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output679
import InitE.FrontendStages.Declarations.Data679
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate648
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate679_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) =
        some globalOutput679 := by
  dsimp only [simplified679, globalOutput679]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal679 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) := by trivial
theorem globalException679_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified679) = none := by rfl
#print axioms globalTranslate679_eq
end InitE.FrontendStages.Declarations
