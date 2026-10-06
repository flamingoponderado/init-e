import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output532
import InitE.FrontendStages.Declarations.Data532
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate516
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate532_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified532) =
        some globalOutput532 := by
  dsimp only [simplified532, globalOutput532]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal532 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified532) := by trivial
theorem globalException532_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified532) = none := by rfl
#print axioms globalTranslate532_eq
end InitE.FrontendStages.Declarations
