import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output851
import InitE.FrontendStages.Declarations.Data851
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate834
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate851_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) =
        some globalOutput851 := by
  dsimp only [simplified851, globalOutput851]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal851 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) := by trivial
theorem globalException851_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) = none := by rfl
#print axioms globalTranslate851_eq
end InitE.FrontendStages.Declarations
