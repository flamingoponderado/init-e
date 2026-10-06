import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output716
import InitE.FrontendStages.Declarations.Data716
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate700
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate716_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified716) =
        some globalOutput716 := by
  dsimp only [simplified716, globalOutput716]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal716 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified716) := by trivial
theorem globalException716_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified716) = none := by rfl
#print axioms globalTranslate716_eq
end InitE.FrontendStages.Declarations
