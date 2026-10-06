import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output419
import InitE.FrontendStages.Declarations.Data419
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate398
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate419_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified419) =
        some globalOutput419 := by
  dsimp only [simplified419, globalOutput419]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal419 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified419) := by trivial
theorem globalException419_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified419) = none := by rfl
#print axioms globalTranslate419_eq
end InitE.FrontendStages.Declarations
