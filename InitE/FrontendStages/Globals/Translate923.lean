import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output923
import InitE.FrontendStages.Declarations.Data923
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate907
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate923_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified923) =
        some globalOutput923 := by
  dsimp only [simplified923, globalOutput923]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal923 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified923) := by trivial
theorem globalException923_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified923) = none := by rfl
#print axioms globalTranslate923_eq
end InitE.FrontendStages.Declarations
