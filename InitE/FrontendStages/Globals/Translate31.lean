import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output31
import InitE.FrontendStages.Declarations.Data31
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate31_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified31) =
        some globalOutput31 := by
  dsimp only [simplified31, globalOutput31]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal31 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified31) := by trivial
theorem globalException31_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified31) = none := by rfl
#print axioms globalTranslate31_eq
end InitE.FrontendStages.Declarations
