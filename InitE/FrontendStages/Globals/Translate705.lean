import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output705
import InitE.FrontendStages.Declarations.Data705
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate689
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate705_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified705) =
        some globalOutput705 := by
  dsimp only [simplified705, globalOutput705]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal705 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified705) := by trivial
theorem globalException705_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified705) = none := by rfl
#print axioms globalTranslate705_eq
end InitE.FrontendStages.Declarations
