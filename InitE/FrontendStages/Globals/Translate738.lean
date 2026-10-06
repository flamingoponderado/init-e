import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output738
import InitE.FrontendStages.Declarations.Data738
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate716
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate738_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified738) =
        some globalOutput738 := by
  dsimp only [simplified738, globalOutput738]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal738 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified738) := by trivial
theorem globalException738_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified738) = none := by rfl
#print axioms globalTranslate738_eq
end InitE.FrontendStages.Declarations
