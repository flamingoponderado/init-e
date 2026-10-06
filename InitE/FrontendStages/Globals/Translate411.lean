import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output411
import InitE.FrontendStages.Declarations.Data411
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate390
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate411_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) =
        some globalOutput411 := by
  dsimp only [simplified411, globalOutput411]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal411 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) := by trivial
theorem globalException411_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) = none := by rfl
#print axioms globalTranslate411_eq
end InitE.FrontendStages.Declarations
