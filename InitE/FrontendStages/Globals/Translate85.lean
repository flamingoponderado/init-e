import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output85
import InitE.FrontendStages.Declarations.Data85
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate69
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate85_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified85) =
        some globalOutput85 := by
  dsimp only [simplified85, globalOutput85]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal85 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified85) := by trivial
theorem globalException85_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified85) = none := by rfl
#print axioms globalTranslate85_eq
end InitE.FrontendStages.Declarations
