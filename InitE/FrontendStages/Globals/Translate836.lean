import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output836
import InitE.FrontendStages.Declarations.Data836
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate820
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate836_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified836) =
        some globalOutput836 := by
  dsimp only [simplified836, globalOutput836]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal836 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified836) := by trivial
theorem globalException836_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified836) = none := by rfl
#print axioms globalTranslate836_eq
end InitE.FrontendStages.Declarations
