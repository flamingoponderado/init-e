import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output346
import InitE.FrontendStages.Declarations.Data346
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate330
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate346_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified346) =
        some globalOutput346 := by
  dsimp only [simplified346, globalOutput346]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal346 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified346) := by trivial
theorem globalException346_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified346) = none := by rfl
#print axioms globalTranslate346_eq
end InitE.FrontendStages.Declarations
