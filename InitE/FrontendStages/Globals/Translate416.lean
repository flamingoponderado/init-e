import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output416
import InitE.FrontendStages.Declarations.Data416
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate395
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate416_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) =
        some globalOutput416 := by
  dsimp only [simplified416, globalOutput416]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal416 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) := by trivial
theorem globalException416_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified416) = none := by rfl
#print axioms globalTranslate416_eq
end InitE.FrontendStages.Declarations
