import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output584
import InitE.FrontendStages.Declarations.Data584
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate564
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate584_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) =
        some globalOutput584 := by
  dsimp only [simplified584, globalOutput584]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal584 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) := by trivial
theorem globalException584_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified584) = none := by rfl
#print axioms globalTranslate584_eq
end InitE.FrontendStages.Declarations
