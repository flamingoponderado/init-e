import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output586
import InitE.FrontendStages.Declarations.Data586
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate570
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate586_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) =
        some globalOutput586 := by
  dsimp only [simplified586, globalOutput586]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal586 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) := by trivial
theorem globalException586_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified586) = none := by rfl
#print axioms globalTranslate586_eq
end InitE.FrontendStages.Declarations
