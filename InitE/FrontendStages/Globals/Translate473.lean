import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output473
import InitE.FrontendStages.Declarations.Data473
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate457
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate473_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) =
        some globalOutput473 := by
  dsimp only [simplified473, globalOutput473]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal473 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) := by trivial
theorem globalException473_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) = none := by rfl
#print axioms globalTranslate473_eq
end InitE.FrontendStages.Declarations
