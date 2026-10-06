import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output250
import InitE.FrontendStages.Declarations.Data250
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate227
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate250_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) =
        some globalOutput250 := by
  dsimp only [simplified250, globalOutput250]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal250 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) := by trivial
theorem globalException250_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) = none := by rfl
#print axioms globalTranslate250_eq
end InitE.FrontendStages.Declarations
