import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output373
import InitE.FrontendStages.Declarations.Data373
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate357
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate373_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified373) =
        some globalOutput373 := by
  dsimp only [simplified373, globalOutput373]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal373 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified373) := by trivial
theorem globalException373_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified373) = none := by rfl
#print axioms globalTranslate373_eq
end InitE.FrontendStages.Declarations
