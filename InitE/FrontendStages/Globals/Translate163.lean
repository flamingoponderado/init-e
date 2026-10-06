import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output163
import InitE.FrontendStages.Declarations.Data163
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate146
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate163_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) =
        some globalOutput163 := by
  dsimp only [simplified163, globalOutput163]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal163 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) := by trivial
theorem globalException163_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) = none := by rfl
#print axioms globalTranslate163_eq
end InitE.FrontendStages.Declarations
