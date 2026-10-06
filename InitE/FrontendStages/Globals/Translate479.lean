import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output479
import InitE.FrontendStages.Declarations.Data479
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate463
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate479_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) =
        some globalOutput479 := by
  dsimp only [simplified479, globalOutput479]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal479 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) := by trivial
theorem globalException479_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) = none := by rfl
#print axioms globalTranslate479_eq
end InitE.FrontendStages.Declarations
