import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output175
import InitE.FrontendStages.Declarations.Data175
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate159
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate175_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) =
        some globalOutput175 := by
  dsimp only [simplified175, globalOutput175]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal175 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) := by trivial
theorem globalException175_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified175) = none := by rfl
#print axioms globalTranslate175_eq
end InitE.FrontendStages.Declarations
