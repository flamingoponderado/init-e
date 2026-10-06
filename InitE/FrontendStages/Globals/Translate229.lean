import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output229
import InitE.FrontendStages.Declarations.Data229
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate211
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate229_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) =
        some globalOutput229 := by
  dsimp only [simplified229, globalOutput229]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal229 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) := by trivial
theorem globalException229_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified229) = none := by rfl
#print axioms globalTranslate229_eq
end InitE.FrontendStages.Declarations
