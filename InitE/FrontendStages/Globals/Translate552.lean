import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output552
import InitE.FrontendStages.Declarations.Data552
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate536
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate552_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified552) =
        some globalOutput552 := by
  dsimp only [simplified552, globalOutput552]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal552 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified552) := by trivial
theorem globalException552_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified552) = none := by rfl
#print axioms globalTranslate552_eq
end InitE.FrontendStages.Declarations
