import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output227
import InitE.FrontendStages.Declarations.Data227
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate209
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate227_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified227) =
        some globalOutput227 := by
  dsimp only [simplified227, globalOutput227]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal227 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified227) := by trivial
theorem globalException227_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified227) = none := by rfl
#print axioms globalTranslate227_eq
end InitE.FrontendStages.Declarations
