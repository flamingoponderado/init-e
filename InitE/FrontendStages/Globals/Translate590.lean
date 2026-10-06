import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output590
import InitE.FrontendStages.Declarations.Data590
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate574
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate590_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified590) =
        some globalOutput590 := by
  dsimp only [simplified590, globalOutput590]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal590 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified590) := by trivial
theorem globalException590_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified590) = none := by rfl
#print axioms globalTranslate590_eq
end InitE.FrontendStages.Declarations
