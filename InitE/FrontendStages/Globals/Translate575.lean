import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output575
import InitE.FrontendStages.Declarations.Data575
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate555
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate575_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified575) =
        some globalOutput575 := by
  dsimp only [simplified575, globalOutput575]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal575 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified575) := by trivial
theorem globalException575_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified575) = none := by rfl
#print axioms globalTranslate575_eq
end InitE.FrontendStages.Declarations
