import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output61
import InitE.FrontendStages.Declarations.Data61
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate45
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate61_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) =
        some globalOutput61 := by
  dsimp only [simplified61, globalOutput61]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal61 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) := by trivial
theorem globalException61_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified61) = none := by rfl
#print axioms globalTranslate61_eq
end InitE.FrontendStages.Declarations
