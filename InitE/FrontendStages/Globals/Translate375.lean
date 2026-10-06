import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output375
import InitE.FrontendStages.Declarations.Data375
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate359
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate375_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) =
        some globalOutput375 := by
  dsimp only [simplified375, globalOutput375]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal375 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) := by trivial
theorem globalException375_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified375) = none := by rfl
#print axioms globalTranslate375_eq
end InitE.FrontendStages.Declarations
