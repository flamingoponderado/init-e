import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output386
import InitE.FrontendStages.Declarations.Data386
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate370
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate386_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified386) =
        some globalOutput386 := by
  dsimp only [simplified386, globalOutput386]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal386 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified386) := by trivial
theorem globalException386_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified386) = none := by rfl
#print axioms globalTranslate386_eq
end InitE.FrontendStages.Declarations
