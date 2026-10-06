import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output44
import InitE.FrontendStages.Declarations.Data44
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate27
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate44_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified44) =
        some globalOutput44 := by
  dsimp only [simplified44, globalOutput44]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal44 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified44) := by trivial
theorem globalException44_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified44) = none := by rfl
#print axioms globalTranslate44_eq
end InitE.FrontendStages.Declarations
