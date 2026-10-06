import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output906
import InitE.FrontendStages.Declarations.Data906
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate873
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate906_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified906) =
        some globalOutput906 := by
  dsimp only [simplified906, globalOutput906]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal906 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified906) := by trivial
theorem globalException906_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified906) = none := by rfl
#print axioms globalTranslate906_eq
end InitE.FrontendStages.Declarations
