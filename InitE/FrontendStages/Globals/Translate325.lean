import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output325
import InitE.FrontendStages.Declarations.Data325
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate309
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate325_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified325) =
        some globalOutput325 := by
  dsimp only [simplified325, globalOutput325]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal325 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified325) := by trivial
theorem globalException325_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified325) = none := by rfl
#print axioms globalTranslate325_eq
end InitE.FrontendStages.Declarations
