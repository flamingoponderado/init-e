import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output570
import InitE.FrontendStages.Declarations.Data570
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate550
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate570_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) =
        some globalOutput570 := by
  dsimp only [simplified570, globalOutput570]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal570 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) := by trivial
theorem globalException570_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified570) = none := by rfl
#print axioms globalTranslate570_eq
end InitE.FrontendStages.Declarations
