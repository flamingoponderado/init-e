import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output786
import InitE.FrontendStages.Declarations.Data786
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate770
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate786_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified786) =
        some globalOutput786 := by
  dsimp only [simplified786, globalOutput786]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal786 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified786) := by trivial
theorem globalException786_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified786) = none := by rfl
#print axioms globalTranslate786_eq
end InitE.FrontendStages.Declarations
