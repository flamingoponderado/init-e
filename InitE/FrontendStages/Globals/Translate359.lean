import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output359
import InitE.FrontendStages.Declarations.Data359
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate336
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate359_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified359) =
        some globalOutput359 := by
  dsimp only [simplified359, globalOutput359]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal359 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified359) := by trivial
theorem globalException359_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified359) = none := by rfl
#print axioms globalTranslate359_eq
end InitE.FrontendStages.Declarations
