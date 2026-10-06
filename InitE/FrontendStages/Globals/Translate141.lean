import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output141
import InitE.FrontendStages.Declarations.Data141
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate125
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate141_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) =
        some globalOutput141 := by
  dsimp only [simplified141, globalOutput141]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal141 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) := by trivial
theorem globalException141_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified141) = none := by rfl
#print axioms globalTranslate141_eq
end InitE.FrontendStages.Declarations
