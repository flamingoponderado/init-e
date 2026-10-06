import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output488
import InitE.FrontendStages.Declarations.Data488
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate472
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate488_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified488) =
        some globalOutput488 := by
  dsimp only [simplified488, globalOutput488]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal488 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified488) := by trivial
theorem globalException488_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified488) = none := by rfl
#print axioms globalTranslate488_eq
end InitE.FrontendStages.Declarations
