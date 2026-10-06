import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output254
import InitE.FrontendStages.Declarations.Data254
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate231
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate254_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified254) =
        some globalOutput254 := by
  dsimp only [simplified254, globalOutput254]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal254 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified254) := by trivial
theorem globalException254_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified254) = none := by rfl
#print axioms globalTranslate254_eq
end InitE.FrontendStages.Declarations
