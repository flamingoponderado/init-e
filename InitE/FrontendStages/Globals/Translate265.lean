import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output265
import InitE.FrontendStages.Declarations.Data265
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate249
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate265_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) =
        some globalOutput265 := by
  dsimp only [simplified265, globalOutput265]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal265 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) := by trivial
theorem globalException265_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) = none := by rfl
#print axioms globalTranslate265_eq
end InitE.FrontendStages.Declarations
