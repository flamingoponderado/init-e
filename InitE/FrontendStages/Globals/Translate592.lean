import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output592
import InitE.FrontendStages.Declarations.Data592
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate576
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate592_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified592) =
        some globalOutput592 := by
  dsimp only [simplified592, globalOutput592]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal592 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified592) := by trivial
theorem globalException592_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified592) = none := by rfl
#print axioms globalTranslate592_eq
end InitE.FrontendStages.Declarations
