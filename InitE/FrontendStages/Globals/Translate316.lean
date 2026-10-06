import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output316
import InitE.FrontendStages.Declarations.Data316
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate300
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate316_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified316) =
        some globalOutput316 := by
  dsimp only [simplified316, globalOutput316]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal316 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified316) := by trivial
theorem globalException316_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified316) = none := by rfl
#print axioms globalTranslate316_eq
end InitE.FrontendStages.Declarations
