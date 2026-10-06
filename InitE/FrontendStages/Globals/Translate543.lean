import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output543
import InitE.FrontendStages.Declarations.Data543
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate527
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate543_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) =
        some globalOutput543 := by
  dsimp only [simplified543, globalOutput543]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal543 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) := by trivial
theorem globalException543_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) = none := by rfl
#print axioms globalTranslate543_eq
end InitE.FrontendStages.Declarations
