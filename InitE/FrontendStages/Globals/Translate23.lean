import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output23
import InitE.FrontendStages.Declarations.Data23
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate23_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) =
        some globalOutput23 := by
  dsimp only [simplified23, globalOutput23]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal23 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) := by trivial
theorem globalException23_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified23) = none := by rfl
#print axioms globalTranslate23_eq
end InitE.FrontendStages.Declarations
