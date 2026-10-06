import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output737
import InitE.FrontendStages.Declarations.Data737
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate715
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate737_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified737) =
        some globalOutput737 := by
  dsimp only [simplified737, globalOutput737]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal737 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified737) := by trivial
theorem globalException737_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified737) = none := by rfl
#print axioms globalTranslate737_eq
end InitE.FrontendStages.Declarations
