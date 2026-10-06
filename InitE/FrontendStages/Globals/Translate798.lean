import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output798
import InitE.FrontendStages.Declarations.Data798
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate779
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate798_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified798) =
        some globalOutput798 := by
  dsimp only [simplified798, globalOutput798]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal798 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified798) := by trivial
theorem globalException798_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified798) = none := by rfl
#print axioms globalTranslate798_eq
end InitE.FrontendStages.Declarations
