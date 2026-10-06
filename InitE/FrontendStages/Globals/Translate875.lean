import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output875
import InitE.FrontendStages.Declarations.Data875
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate859
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate875_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) =
        some globalOutput875 := by
  dsimp only [simplified875, globalOutput875]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal875 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) := by trivial
theorem globalException875_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified875) = none := by rfl
#print axioms globalTranslate875_eq
end InitE.FrontendStages.Declarations
