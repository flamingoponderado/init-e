import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output907
import InitE.FrontendStages.Declarations.Data907
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate874
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate907_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) =
        some globalOutput907 := by
  dsimp only [simplified907, globalOutput907]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal907 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) := by trivial
theorem globalException907_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) = none := by rfl
#print axioms globalTranslate907_eq
end InitE.FrontendStages.Declarations
