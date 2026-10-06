import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output820
import InitE.FrontendStages.Declarations.Data820
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate804
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate820_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified820) =
        some globalOutput820 := by
  dsimp only [simplified820, globalOutput820]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal820 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified820) := by trivial
theorem globalException820_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified820) = none := by rfl
#print axioms globalTranslate820_eq
end InitE.FrontendStages.Declarations
