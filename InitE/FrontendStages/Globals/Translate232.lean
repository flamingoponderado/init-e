import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output232
import InitE.FrontendStages.Declarations.Data232
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate214
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate232_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) =
        some globalOutput232 := by
  dsimp only [simplified232, globalOutput232]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal232 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) := by trivial
theorem globalException232_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified232) = none := by rfl
#print axioms globalTranslate232_eq
end InitE.FrontendStages.Declarations
