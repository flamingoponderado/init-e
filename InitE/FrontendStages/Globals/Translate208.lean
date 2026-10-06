import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output208
import InitE.FrontendStages.Declarations.Data208
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate192
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate208_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified208) =
        some globalOutput208 := by
  dsimp only [simplified208, globalOutput208]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal208 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified208) := by trivial
theorem globalException208_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified208) = none := by rfl
#print axioms globalTranslate208_eq
end InitE.FrontendStages.Declarations
