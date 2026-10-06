import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output871
import InitE.FrontendStages.Declarations.Data871
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate855
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate871_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified871) =
        some globalOutput871 := by
  dsimp only [simplified871, globalOutput871]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal871 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified871) := by trivial
theorem globalException871_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified871) = none := by rfl
#print axioms globalTranslate871_eq
end InitE.FrontendStages.Declarations
