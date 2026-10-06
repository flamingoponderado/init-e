import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output125
import InitE.FrontendStages.Declarations.Data125
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate109
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate125_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified125) =
        some globalOutput125 := by
  dsimp only [simplified125, globalOutput125]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal125 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified125) := by trivial
theorem globalException125_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified125) = none := by rfl
#print axioms globalTranslate125_eq
end InitE.FrontendStages.Declarations
