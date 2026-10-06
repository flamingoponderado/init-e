import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output308
import InitE.FrontendStages.Declarations.Data308
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate291
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate308_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified308) =
        some globalOutput308 := by
  dsimp only [simplified308, globalOutput308]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal308 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified308) := by trivial
theorem globalException308_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified308) = none := by rfl
#print axioms globalTranslate308_eq
end InitE.FrontendStages.Declarations
