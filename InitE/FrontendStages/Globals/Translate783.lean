import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output783
import InitE.FrontendStages.Declarations.Data783
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate767
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate783_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified783) =
        some globalOutput783 := by
  dsimp only [simplified783, globalOutput783]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal783 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified783) := by trivial
theorem globalException783_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified783) = none := by rfl
#print axioms globalTranslate783_eq
end InitE.FrontendStages.Declarations
