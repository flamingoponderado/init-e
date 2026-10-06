import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output84
import InitE.FrontendStages.Declarations.Data84
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate68
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate84_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) =
        some globalOutput84 := by
  dsimp only [simplified84, globalOutput84]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal84 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) := by trivial
theorem globalException84_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified84) = none := by rfl
#print axioms globalTranslate84_eq
end InitE.FrontendStages.Declarations
