import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output137
import InitE.FrontendStages.Declarations.Data137
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate121
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate137_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified137) =
        some globalOutput137 := by
  dsimp only [simplified137, globalOutput137]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal137 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified137) := by trivial
theorem globalException137_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified137) = none := by rfl
#print axioms globalTranslate137_eq
end InitE.FrontendStages.Declarations
