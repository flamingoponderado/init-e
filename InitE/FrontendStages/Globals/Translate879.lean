import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output879
import InitE.FrontendStages.Declarations.Data879
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate863
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate879_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified879) =
        some globalOutput879 := by
  dsimp only [simplified879, globalOutput879]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal879 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified879) := by trivial
theorem globalException879_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified879) = none := by rfl
#print axioms globalTranslate879_eq
end InitE.FrontendStages.Declarations
