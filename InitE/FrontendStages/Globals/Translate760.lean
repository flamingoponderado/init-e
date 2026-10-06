import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output760
import InitE.FrontendStages.Declarations.Data760
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate741
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate760_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) =
        some globalOutput760 := by
  dsimp only [simplified760, globalOutput760]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal760 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) := by trivial
theorem globalException760_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified760) = none := by rfl
#print axioms globalTranslate760_eq
end InitE.FrontendStages.Declarations
