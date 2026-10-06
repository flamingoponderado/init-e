import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output466
import InitE.FrontendStages.Declarations.Data466
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate450
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate466_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified466) =
        some globalOutput466 := by
  dsimp only [simplified466, globalOutput466]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal466 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified466) := by trivial
theorem globalException466_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified466) = none := by rfl
#print axioms globalTranslate466_eq
end InitE.FrontendStages.Declarations
