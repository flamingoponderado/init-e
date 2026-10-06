import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output391
import InitE.FrontendStages.Declarations.Data391
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate375
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate391_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) =
        some globalOutput391 := by
  dsimp only [simplified391, globalOutput391]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal391 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) := by trivial
theorem globalException391_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) = none := by rfl
#print axioms globalTranslate391_eq
end InitE.FrontendStages.Declarations
