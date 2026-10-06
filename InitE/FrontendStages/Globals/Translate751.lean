import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output751
import InitE.FrontendStages.Declarations.Data751
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate730
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate751_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) =
        some globalOutput751 := by
  dsimp only [simplified751, globalOutput751]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal751 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) := by trivial
theorem globalException751_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) = none := by rfl
#print axioms globalTranslate751_eq
end InitE.FrontendStages.Declarations
