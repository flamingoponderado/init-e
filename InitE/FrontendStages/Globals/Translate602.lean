import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output602
import InitE.FrontendStages.Declarations.Data602
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate586
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate602_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified602) =
        some globalOutput602 := by
  dsimp only [simplified602, globalOutput602]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal602 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified602) := by trivial
theorem globalException602_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified602) = none := by rfl
#print axioms globalTranslate602_eq
end InitE.FrontendStages.Declarations
