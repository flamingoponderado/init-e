import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output72
import InitE.FrontendStages.Declarations.Data72
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate56
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate72_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified72) =
        some globalOutput72 := by
  dsimp only [simplified72, globalOutput72]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal72 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified72) := by trivial
theorem globalException72_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified72) = none := by rfl
#print axioms globalTranslate72_eq
end InitE.FrontendStages.Declarations
