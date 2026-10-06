import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output166
import InitE.FrontendStages.Declarations.Data166
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate150
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate166_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified166) =
        some globalOutput166 := by
  dsimp only [simplified166, globalOutput166]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal166 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified166) := by trivial
theorem globalException166_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified166) = none := by rfl
#print axioms globalTranslate166_eq
end InitE.FrontendStages.Declarations
