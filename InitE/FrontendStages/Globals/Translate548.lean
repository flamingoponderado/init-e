import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output548
import InitE.FrontendStages.Declarations.Data548
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate532
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate548_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) =
        some globalOutput548 := by
  dsimp only [simplified548, globalOutput548]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal548 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) := by trivial
theorem globalException548_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) = none := by rfl
#print axioms globalTranslate548_eq
end InitE.FrontendStages.Declarations
