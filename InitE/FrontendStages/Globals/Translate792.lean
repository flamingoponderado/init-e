import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output792
import InitE.FrontendStages.Declarations.Data792
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate776
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate792_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified792) =
        some globalOutput792 := by
  dsimp only [simplified792, globalOutput792]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal792 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified792) := by trivial
theorem globalException792_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified792) = none := by rfl
#print axioms globalTranslate792_eq
end InitE.FrontendStages.Declarations
