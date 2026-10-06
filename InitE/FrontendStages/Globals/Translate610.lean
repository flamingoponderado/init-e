import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output610
import InitE.FrontendStages.Declarations.Data610
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate594
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate610_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified610) =
        some globalOutput610 := by
  dsimp only [simplified610, globalOutput610]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal610 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified610) := by trivial
theorem globalException610_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified610) = none := by rfl
#print axioms globalTranslate610_eq
end InitE.FrontendStages.Declarations
