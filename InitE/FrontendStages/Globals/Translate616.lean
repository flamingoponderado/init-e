import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output616
import InitE.FrontendStages.Declarations.Data616
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate596
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate616_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified616) =
        some globalOutput616 := by
  dsimp only [simplified616, globalOutput616]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal616 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified616) := by trivial
theorem globalException616_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified616) = none := by rfl
#print axioms globalTranslate616_eq
end InitE.FrontendStages.Declarations
