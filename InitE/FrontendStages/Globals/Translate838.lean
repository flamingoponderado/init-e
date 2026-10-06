import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output838
import InitE.FrontendStages.Declarations.Data838
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate822
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate838_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified838) =
        some globalOutput838 := by
  dsimp only [simplified838, globalOutput838]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal838 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified838) := by trivial
theorem globalException838_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified838) = none := by rfl
#print axioms globalTranslate838_eq
end InitE.FrontendStages.Declarations
