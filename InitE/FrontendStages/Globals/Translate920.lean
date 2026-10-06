import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output920
import InitE.FrontendStages.Declarations.Data920
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate904
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate920_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) =
        some globalOutput920 := by
  dsimp only [simplified920, globalOutput920]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal920 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) := by trivial
theorem globalException920_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) = none := by rfl
#print axioms globalTranslate920_eq
end InitE.FrontendStages.Declarations
