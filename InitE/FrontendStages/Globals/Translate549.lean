import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output549
import InitE.FrontendStages.Declarations.Data549
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate533
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate549_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified549) =
        some globalOutput549 := by
  dsimp only [simplified549, globalOutput549]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal549 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified549) := by trivial
theorem globalException549_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified549) = none := by rfl
#print axioms globalTranslate549_eq
end InitE.FrontendStages.Declarations
