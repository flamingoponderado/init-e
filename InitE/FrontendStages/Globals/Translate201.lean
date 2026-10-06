import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output201
import InitE.FrontendStages.Declarations.Data201
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate181
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate201_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified201) =
        some globalOutput201 := by
  dsimp only [simplified201, globalOutput201]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal201 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified201) := by trivial
theorem globalException201_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified201) = none := by rfl
#print axioms globalTranslate201_eq
end InitE.FrontendStages.Declarations
