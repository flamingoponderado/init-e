import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output149
import InitE.FrontendStages.Declarations.Data149
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate132
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate149_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified149) =
        some globalOutput149 := by
  dsimp only [simplified149, globalOutput149]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal149 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified149) := by trivial
theorem globalException149_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified149) = none := by rfl
#print axioms globalTranslate149_eq
end InitE.FrontendStages.Declarations
