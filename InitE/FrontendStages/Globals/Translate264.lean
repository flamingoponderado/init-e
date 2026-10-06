import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output264
import InitE.FrontendStages.Declarations.Data264
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate242
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate264_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) =
        some globalOutput264 := by
  dsimp only [simplified264, globalOutput264]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal264 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) := by trivial
theorem globalException264_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) = none := by rfl
#print axioms globalTranslate264_eq
end InitE.FrontendStages.Declarations
