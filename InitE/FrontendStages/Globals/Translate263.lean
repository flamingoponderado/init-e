import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output263
import InitE.FrontendStages.Declarations.Data263
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate241
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate263_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified263) =
        some globalOutput263 := by
  dsimp only [simplified263, globalOutput263]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal263 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified263) := by trivial
theorem globalException263_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified263) = none := by rfl
#print axioms globalTranslate263_eq
end InitE.FrontendStages.Declarations
