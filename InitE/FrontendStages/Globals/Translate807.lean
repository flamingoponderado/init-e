import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output807
import InitE.FrontendStages.Declarations.Data807
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate788
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate807_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) =
        some globalOutput807 := by
  dsimp only [simplified807, globalOutput807]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal807 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) := by trivial
theorem globalException807_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified807) = none := by rfl
#print axioms globalTranslate807_eq
end InitE.FrontendStages.Declarations
