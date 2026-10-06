import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output578
import InitE.FrontendStages.Declarations.Data578
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate558
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate578_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) =
        some globalOutput578 := by
  dsimp only [simplified578, globalOutput578]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal578 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) := by trivial
theorem globalException578_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) = none := by rfl
#print axioms globalTranslate578_eq
end InitE.FrontendStages.Declarations
