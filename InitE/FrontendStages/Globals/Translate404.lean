import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output404
import InitE.FrontendStages.Declarations.Data404
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate388
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate404_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified404) =
        some globalOutput404 := by
  dsimp only [simplified404, globalOutput404]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal404 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified404) := by trivial
theorem globalException404_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified404) = none := by rfl
#print axioms globalTranslate404_eq
end InitE.FrontendStages.Declarations
