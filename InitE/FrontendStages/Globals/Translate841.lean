import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output841
import InitE.FrontendStages.Declarations.Data841
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate825
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate841_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) =
        some globalOutput841 := by
  dsimp only [simplified841, globalOutput841]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal841 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) := by trivial
theorem globalException841_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified841) = none := by rfl
#print axioms globalTranslate841_eq
end InitE.FrontendStages.Declarations
