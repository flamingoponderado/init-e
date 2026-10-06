import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output423
import InitE.FrontendStages.Declarations.Data423
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate402
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate423_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) =
        some globalOutput423 := by
  dsimp only [simplified423, globalOutput423]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal423 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) := by trivial
theorem globalException423_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) = none := by rfl
#print axioms globalTranslate423_eq
end InitE.FrontendStages.Declarations
