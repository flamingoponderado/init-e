import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output181
import InitE.FrontendStages.Declarations.Data181
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate165
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate181_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified181) =
        some globalOutput181 := by
  dsimp only [simplified181, globalOutput181]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal181 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified181) := by trivial
theorem globalException181_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified181) = none := by rfl
#print axioms globalTranslate181_eq
end InitE.FrontendStages.Declarations
