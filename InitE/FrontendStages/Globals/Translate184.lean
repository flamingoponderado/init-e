import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output184
import InitE.FrontendStages.Declarations.Data184
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate168
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate184_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified184) =
        some globalOutput184 := by
  dsimp only [simplified184, globalOutput184]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal184 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified184) := by trivial
theorem globalException184_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified184) = none := by rfl
#print axioms globalTranslate184_eq
end InitE.FrontendStages.Declarations
