import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output164
import InitE.FrontendStages.Declarations.Data164
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate148
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate164_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified164) =
        some globalOutput164 := by
  dsimp only [simplified164, globalOutput164]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal164 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified164) := by trivial
theorem globalException164_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified164) = none := by rfl
#print axioms globalTranslate164_eq
end InitE.FrontendStages.Declarations
