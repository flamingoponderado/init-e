import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output26
import InitE.FrontendStages.Declarations.Data26
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate10
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate26_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified26) =
        some globalOutput26 := by
  dsimp only [simplified26, globalOutput26]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal26 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified26) := by trivial
theorem globalException26_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified26) = none := by rfl
#print axioms globalTranslate26_eq
end InitE.FrontendStages.Declarations
