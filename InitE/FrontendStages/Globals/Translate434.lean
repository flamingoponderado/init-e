import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output434
import InitE.FrontendStages.Declarations.Data434
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate418
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate434_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) =
        some globalOutput434 := by
  dsimp only [simplified434, globalOutput434]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal434 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) := by trivial
theorem globalException434_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified434) = none := by rfl
#print axioms globalTranslate434_eq
end InitE.FrontendStages.Declarations
