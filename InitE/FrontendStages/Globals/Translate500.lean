import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output500
import InitE.FrontendStages.Declarations.Data500
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate484
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate500_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified500) =
        some globalOutput500 := by
  dsimp only [simplified500, globalOutput500]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal500 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified500) := by trivial
theorem globalException500_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified500) = none := by rfl
#print axioms globalTranslate500_eq
end InitE.FrontendStages.Declarations
