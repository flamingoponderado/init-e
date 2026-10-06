import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output322
import InitE.FrontendStages.Declarations.Data322
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate306
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate322_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) =
        some globalOutput322 := by
  dsimp only [simplified322, globalOutput322]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal322 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) := by trivial
theorem globalException322_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) = none := by rfl
#print axioms globalTranslate322_eq
end InitE.FrontendStages.Declarations
