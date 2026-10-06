import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output80
import InitE.FrontendStages.Declarations.Data80
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate64
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate80_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified80) =
        some globalOutput80 := by
  dsimp only [simplified80, globalOutput80]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal80 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified80) := by trivial
theorem globalException80_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified80) = none := by rfl
#print axioms globalTranslate80_eq
end InitE.FrontendStages.Declarations
