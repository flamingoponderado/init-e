import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output145
import InitE.FrontendStages.Declarations.Data145
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate129
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate145_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified145) =
        some globalOutput145 := by
  dsimp only [simplified145, globalOutput145]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal145 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified145) := by trivial
theorem globalException145_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified145) = none := by rfl
#print axioms globalTranslate145_eq
end InitE.FrontendStages.Declarations
