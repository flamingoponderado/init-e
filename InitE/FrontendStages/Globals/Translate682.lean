import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output682
import InitE.FrontendStages.Declarations.Data682
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate666
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate682_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) =
        some globalOutput682 := by
  dsimp only [simplified682, globalOutput682]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal682 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) := by trivial
theorem globalException682_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) = none := by rfl
#print axioms globalTranslate682_eq
end InitE.FrontendStages.Declarations
