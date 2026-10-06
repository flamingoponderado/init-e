import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output83
import InitE.FrontendStages.Declarations.Data83
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate67
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate83_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified83) =
        some globalOutput83 := by
  dsimp only [simplified83, globalOutput83]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal83 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified83) := by trivial
theorem globalException83_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified83) = none := by rfl
#print axioms globalTranslate83_eq
end InitE.FrontendStages.Declarations
