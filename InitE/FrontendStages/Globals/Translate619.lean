import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output619
import InitE.FrontendStages.Declarations.Data619
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate599
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate619_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified619) =
        some globalOutput619 := by
  dsimp only [simplified619, globalOutput619]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal619 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified619) := by trivial
theorem globalException619_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified619) = none := by rfl
#print axioms globalTranslate619_eq
end InitE.FrontendStages.Declarations
