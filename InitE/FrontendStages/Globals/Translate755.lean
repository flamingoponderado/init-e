import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output755
import InitE.FrontendStages.Declarations.Data755
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate739
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate755_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) =
        some globalOutput755 := by
  dsimp only [simplified755, globalOutput755]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal755 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) := by trivial
theorem globalException755_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified755) = none := by rfl
#print axioms globalTranslate755_eq
end InitE.FrontendStages.Declarations
