import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output104
import InitE.FrontendStages.Declarations.Data104
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate83
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate104_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) =
        some globalOutput104 := by
  dsimp only [simplified104, globalOutput104]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal104 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) := by trivial
theorem globalException104_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) = none := by rfl
#print axioms globalTranslate104_eq
end InitE.FrontendStages.Declarations
