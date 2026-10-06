import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output537
import InitE.FrontendStages.Declarations.Data537
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate521
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate537_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified537) =
        some globalOutput537 := by
  dsimp only [simplified537, globalOutput537]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal537 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified537) := by trivial
theorem globalException537_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified537) = none := by rfl
#print axioms globalTranslate537_eq
end InitE.FrontendStages.Declarations
