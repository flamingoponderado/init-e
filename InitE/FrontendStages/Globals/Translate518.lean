import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output518
import InitE.FrontendStages.Declarations.Data518
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate502
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate518_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) =
        some globalOutput518 := by
  dsimp only [simplified518, globalOutput518]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal518 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) := by trivial
theorem globalException518_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) = none := by rfl
#print axioms globalTranslate518_eq
end InitE.FrontendStages.Declarations
