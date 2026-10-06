import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output78
import InitE.FrontendStages.Declarations.Data78
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate62
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate78_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified78) =
        some globalOutput78 := by
  dsimp only [simplified78, globalOutput78]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal78 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified78) := by trivial
theorem globalException78_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified78) = none := by rfl
#print axioms globalTranslate78_eq
end InitE.FrontendStages.Declarations
