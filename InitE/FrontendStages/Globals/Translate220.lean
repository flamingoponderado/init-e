import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output220
import InitE.FrontendStages.Declarations.Data220
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate204
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate220_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified220) =
        some globalOutput220 := by
  dsimp only [simplified220, globalOutput220]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal220 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified220) := by trivial
theorem globalException220_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified220) = none := by rfl
#print axioms globalTranslate220_eq
end InitE.FrontendStages.Declarations
