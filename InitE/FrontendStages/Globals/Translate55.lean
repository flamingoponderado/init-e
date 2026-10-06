import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output55
import InitE.FrontendStages.Declarations.Data55
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate39
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate55_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified55) =
        some globalOutput55 := by
  dsimp only [simplified55, globalOutput55]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal55 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified55) := by trivial
theorem globalException55_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified55) = none := by rfl
#print axioms globalTranslate55_eq
end InitE.FrontendStages.Declarations
