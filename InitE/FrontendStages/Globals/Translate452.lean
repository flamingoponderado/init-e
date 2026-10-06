import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output452
import InitE.FrontendStages.Declarations.Data452
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate431
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate452_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified452) =
        some globalOutput452 := by
  dsimp only [simplified452, globalOutput452]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal452 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified452) := by trivial
theorem globalException452_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified452) = none := by rfl
#print axioms globalTranslate452_eq
end InitE.FrontendStages.Declarations
