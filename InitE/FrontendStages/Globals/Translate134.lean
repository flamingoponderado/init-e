import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output134
import InitE.FrontendStages.Declarations.Data134
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate118
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate134_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) =
        some globalOutput134 := by
  dsimp only [simplified134, globalOutput134]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal134 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) := by trivial
theorem globalException134_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified134) = none := by rfl
#print axioms globalTranslate134_eq
end InitE.FrontendStages.Declarations
