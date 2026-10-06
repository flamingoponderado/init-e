import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output446
import InitE.FrontendStages.Declarations.Data446
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate425
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate446_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) =
        some globalOutput446 := by
  dsimp only [simplified446, globalOutput446]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal446 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) := by trivial
theorem globalException446_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified446) = none := by rfl
#print axioms globalTranslate446_eq
end InitE.FrontendStages.Declarations
