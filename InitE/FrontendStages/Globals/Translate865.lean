import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output865
import InitE.FrontendStages.Declarations.Data865
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate848
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate865_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified865) =
        some globalOutput865 := by
  dsimp only [simplified865, globalOutput865]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal865 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified865) := by trivial
theorem globalException865_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified865) = none := by rfl
#print axioms globalTranslate865_eq
end InitE.FrontendStages.Declarations
