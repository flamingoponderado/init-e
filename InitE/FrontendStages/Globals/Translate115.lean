import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output115
import InitE.FrontendStages.Declarations.Data115
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate96
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate115_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) =
        some globalOutput115 := by
  dsimp only [simplified115, globalOutput115]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal115 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) := by trivial
theorem globalException115_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified115) = none := by rfl
#print axioms globalTranslate115_eq
end InitE.FrontendStages.Declarations
