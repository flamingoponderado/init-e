import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output212
import InitE.FrontendStages.Declarations.Data212
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate196
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate212_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) =
        some globalOutput212 := by
  dsimp only [simplified212, globalOutput212]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal212 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) := by trivial
theorem globalException212_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified212) = none := by rfl
#print axioms globalTranslate212_eq
end InitE.FrontendStages.Declarations
