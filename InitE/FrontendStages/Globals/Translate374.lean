import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output374
import InitE.FrontendStages.Declarations.Data374
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate358
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate374_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified374) =
        some globalOutput374 := by
  dsimp only [simplified374, globalOutput374]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal374 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified374) := by trivial
theorem globalException374_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified374) = none := by rfl
#print axioms globalTranslate374_eq
end InitE.FrontendStages.Declarations
