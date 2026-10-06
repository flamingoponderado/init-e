import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output337
import InitE.FrontendStages.Declarations.Data337
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate321
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate337_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified337) =
        some globalOutput337 := by
  dsimp only [simplified337, globalOutput337]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal337 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified337) := by trivial
theorem globalException337_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified337) = none := by rfl
#print axioms globalTranslate337_eq
end InitE.FrontendStages.Declarations
