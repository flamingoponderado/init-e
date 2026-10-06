import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output723
import InitE.FrontendStages.Declarations.Data723
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate706
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate723_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) =
        some globalOutput723 := by
  dsimp only [simplified723, globalOutput723]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal723 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) := by trivial
theorem globalException723_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified723) = none := by rfl
#print axioms globalTranslate723_eq
end InitE.FrontendStages.Declarations
