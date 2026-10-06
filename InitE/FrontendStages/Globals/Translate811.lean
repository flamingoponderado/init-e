import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output811
import InitE.FrontendStages.Declarations.Data811
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate792
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate811_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified811) =
        some globalOutput811 := by
  dsimp only [simplified811, globalOutput811]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal811 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified811) := by trivial
theorem globalException811_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified811) = none := by rfl
#print axioms globalTranslate811_eq
end InitE.FrontendStages.Declarations
