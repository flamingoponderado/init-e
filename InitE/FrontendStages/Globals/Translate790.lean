import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output790
import InitE.FrontendStages.Declarations.Data790
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate774
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate790_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) =
        some globalOutput790 := by
  dsimp only [simplified790, globalOutput790]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal790 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) := by trivial
theorem globalException790_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) = none := by rfl
#print axioms globalTranslate790_eq
end InitE.FrontendStages.Declarations
