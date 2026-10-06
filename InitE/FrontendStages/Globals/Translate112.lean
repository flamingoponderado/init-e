import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output112
import InitE.FrontendStages.Declarations.Data112
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate93
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate112_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified112) =
        some globalOutput112 := by
  dsimp only [simplified112, globalOutput112]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal112 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified112) := by trivial
theorem globalException112_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified112) = none := by rfl
#print axioms globalTranslate112_eq
end InitE.FrontendStages.Declarations
