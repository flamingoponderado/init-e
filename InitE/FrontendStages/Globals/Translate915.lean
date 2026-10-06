import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output915
import InitE.FrontendStages.Declarations.Data915
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate882
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate915_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified915) =
        some globalOutput915 := by
  dsimp only [simplified915, globalOutput915]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal915 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified915) := by trivial
theorem globalException915_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified915) = none := by rfl
#print axioms globalTranslate915_eq
end InitE.FrontendStages.Declarations
