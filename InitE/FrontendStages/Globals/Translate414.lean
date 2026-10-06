import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output414
import InitE.FrontendStages.Declarations.Data414
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate393
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate414_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) =
        some globalOutput414 := by
  dsimp only [simplified414, globalOutput414]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal414 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) := by trivial
theorem globalException414_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) = none := by rfl
#print axioms globalTranslate414_eq
end InitE.FrontendStages.Declarations
