import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output340
import InitE.FrontendStages.Declarations.Data340
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate324
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate340_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) =
        some globalOutput340 := by
  dsimp only [simplified340, globalOutput340]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal340 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) := by trivial
theorem globalException340_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) = none := by rfl
#print axioms globalTranslate340_eq
end InitE.FrontendStages.Declarations
