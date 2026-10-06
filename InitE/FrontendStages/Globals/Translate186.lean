import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output186
import InitE.FrontendStages.Declarations.Data186
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate170
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate186_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified186) =
        some globalOutput186 := by
  dsimp only [simplified186, globalOutput186]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal186 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified186) := by trivial
theorem globalException186_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified186) = none := by rfl
#print axioms globalTranslate186_eq
end InitE.FrontendStages.Declarations
