import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output348
import InitE.FrontendStages.Declarations.Data348
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate332
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate348_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) =
        some globalOutput348 := by
  dsimp only [simplified348, globalOutput348]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal348 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) := by trivial
theorem globalException348_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified348) = none := by rfl
#print axioms globalTranslate348_eq
end InitE.FrontendStages.Declarations
