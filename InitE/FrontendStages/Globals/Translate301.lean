import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output301
import InitE.FrontendStages.Declarations.Data301
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate284
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate301_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) =
        some globalOutput301 := by
  dsimp only [simplified301, globalOutput301]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal301 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) := by trivial
theorem globalException301_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified301) = none := by rfl
#print axioms globalTranslate301_eq
end InitE.FrontendStages.Declarations
