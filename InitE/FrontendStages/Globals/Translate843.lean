import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output843
import InitE.FrontendStages.Declarations.Data843
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate827
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate843_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) =
        some globalOutput843 := by
  dsimp only [simplified843, globalOutput843]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal843 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) := by trivial
theorem globalException843_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified843) = none := by rfl
#print axioms globalTranslate843_eq
end InitE.FrontendStages.Declarations
