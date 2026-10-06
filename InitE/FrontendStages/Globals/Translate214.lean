import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output214
import InitE.FrontendStages.Declarations.Data214
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate198
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate214_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) =
        some globalOutput214 := by
  dsimp only [simplified214, globalOutput214]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal214 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) := by trivial
theorem globalException214_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified214) = none := by rfl
#print axioms globalTranslate214_eq
end InitE.FrontendStages.Declarations
