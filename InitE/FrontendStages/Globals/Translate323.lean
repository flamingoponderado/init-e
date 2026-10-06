import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output323
import InitE.FrontendStages.Declarations.Data323
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate307
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate323_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) =
        some globalOutput323 := by
  dsimp only [simplified323, globalOutput323]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal323 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) := by trivial
theorem globalException323_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) = none := by rfl
#print axioms globalTranslate323_eq
end InitE.FrontendStages.Declarations
