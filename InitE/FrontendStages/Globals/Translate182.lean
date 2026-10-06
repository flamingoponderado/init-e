import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output182
import InitE.FrontendStages.Declarations.Data182
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate166
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate182_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) =
        some globalOutput182 := by
  dsimp only [simplified182, globalOutput182]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal182 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) := by trivial
theorem globalException182_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) = none := by rfl
#print axioms globalTranslate182_eq
end InitE.FrontendStages.Declarations
