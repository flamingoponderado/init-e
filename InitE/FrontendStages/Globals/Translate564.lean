import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output564
import InitE.FrontendStages.Declarations.Data564
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate548
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate564_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) =
        some globalOutput564 := by
  dsimp only [simplified564, globalOutput564]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal564 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) := by trivial
theorem globalException564_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified564) = none := by rfl
#print axioms globalTranslate564_eq
end InitE.FrontendStages.Declarations
