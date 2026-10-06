import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output681
import InitE.FrontendStages.Declarations.Data681
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate665
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate681_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified681) =
        some globalOutput681 := by
  dsimp only [simplified681, globalOutput681]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal681 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified681) := by trivial
theorem globalException681_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified681) = none := by rfl
#print axioms globalTranslate681_eq
end InitE.FrontendStages.Declarations
