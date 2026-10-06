import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output628
import InitE.FrontendStages.Declarations.Data628
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate603
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate628_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) =
        some globalOutput628 := by
  dsimp only [simplified628, globalOutput628]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal628 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) := by trivial
theorem globalException628_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) = none := by rfl
#print axioms globalTranslate628_eq
end InitE.FrontendStages.Declarations
