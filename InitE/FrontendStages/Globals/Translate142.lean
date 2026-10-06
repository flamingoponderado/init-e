import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output142
import InitE.FrontendStages.Declarations.Data142
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate126
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate142_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) =
        some globalOutput142 := by
  dsimp only [simplified142, globalOutput142]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal142 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) := by trivial
theorem globalException142_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) = none := by rfl
#print axioms globalTranslate142_eq
end InitE.FrontendStages.Declarations
