import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output123
import InitE.FrontendStages.Declarations.Data123
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate107
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate123_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) =
        some globalOutput123 := by
  dsimp only [simplified123, globalOutput123]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal123 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) := by trivial
theorem globalException123_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) = none := by rfl
#print axioms globalTranslate123_eq
end InitE.FrontendStages.Declarations
