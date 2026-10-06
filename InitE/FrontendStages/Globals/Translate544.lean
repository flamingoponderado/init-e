import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output544
import InitE.FrontendStages.Declarations.Data544
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate528
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate544_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) =
        some globalOutput544 := by
  dsimp only [simplified544, globalOutput544]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal544 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) := by trivial
theorem globalException544_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified544) = none := by rfl
#print axioms globalTranslate544_eq
end InitE.FrontendStages.Declarations
