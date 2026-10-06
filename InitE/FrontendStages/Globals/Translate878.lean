import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output878
import InitE.FrontendStages.Declarations.Data878
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate862
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate878_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified878) =
        some globalOutput878 := by
  dsimp only [simplified878, globalOutput878]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal878 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified878) := by trivial
theorem globalException878_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified878) = none := by rfl
#print axioms globalTranslate878_eq
end InitE.FrontendStages.Declarations
