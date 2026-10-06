import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output338
import InitE.FrontendStages.Declarations.Data338
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate322
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate338_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) =
        some globalOutput338 := by
  dsimp only [simplified338, globalOutput338]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal338 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) := by trivial
theorem globalException338_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified338) = none := by rfl
#print axioms globalTranslate338_eq
end InitE.FrontendStages.Declarations
