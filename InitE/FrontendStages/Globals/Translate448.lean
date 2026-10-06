import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output448
import InitE.FrontendStages.Declarations.Data448
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate427
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate448_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) =
        some globalOutput448 := by
  dsimp only [simplified448, globalOutput448]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal448 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) := by trivial
theorem globalException448_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) = none := by rfl
#print axioms globalTranslate448_eq
end InitE.FrontendStages.Declarations
