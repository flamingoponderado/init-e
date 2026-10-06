import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output118
import InitE.FrontendStages.Declarations.Data118
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate101
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate118_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified118) =
        some globalOutput118 := by
  dsimp only [simplified118, globalOutput118]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal118 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified118) := by trivial
theorem globalException118_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified118) = none := by rfl
#print axioms globalTranslate118_eq
end InitE.FrontendStages.Declarations
