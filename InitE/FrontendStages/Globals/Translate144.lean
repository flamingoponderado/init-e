import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output144
import InitE.FrontendStages.Declarations.Data144
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate128
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate144_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified144) =
        some globalOutput144 := by
  dsimp only [simplified144, globalOutput144]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal144 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified144) := by trivial
theorem globalException144_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified144) = none := by rfl
#print axioms globalTranslate144_eq
end InitE.FrontendStages.Declarations
