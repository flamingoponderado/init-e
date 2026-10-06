import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output754
import InitE.FrontendStages.Declarations.Data754
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate738
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate754_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) =
        some globalOutput754 := by
  dsimp only [simplified754, globalOutput754]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal754 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) := by trivial
theorem globalException754_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified754) = none := by rfl
#print axioms globalTranslate754_eq
end InitE.FrontendStages.Declarations
