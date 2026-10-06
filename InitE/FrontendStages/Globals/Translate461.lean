import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output461
import InitE.FrontendStages.Declarations.Data461
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate445
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate461_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified461) =
        some globalOutput461 := by
  dsimp only [simplified461, globalOutput461]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal461 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified461) := by trivial
theorem globalException461_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified461) = none := by rfl
#print axioms globalTranslate461_eq
end InitE.FrontendStages.Declarations
