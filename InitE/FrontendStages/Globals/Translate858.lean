import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output858
import InitE.FrontendStages.Declarations.Data858
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate841
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate858_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) =
        some globalOutput858 := by
  dsimp only [simplified858, globalOutput858]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal858 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) := by trivial
theorem globalException858_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified858) = none := by rfl
#print axioms globalTranslate858_eq
end InitE.FrontendStages.Declarations
