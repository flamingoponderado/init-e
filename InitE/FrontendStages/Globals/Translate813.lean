import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output813
import InitE.FrontendStages.Declarations.Data813
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate797
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate813_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified813) =
        some globalOutput813 := by
  dsimp only [simplified813, globalOutput813]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal813 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified813) := by trivial
theorem globalException813_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified813) = none := by rfl
#print axioms globalTranslate813_eq
end InitE.FrontendStages.Declarations
