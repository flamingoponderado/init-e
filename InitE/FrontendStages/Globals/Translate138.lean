import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output138
import InitE.FrontendStages.Declarations.Data138
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate122
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate138_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified138) =
        some globalOutput138 := by
  dsimp only [simplified138, globalOutput138]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal138 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified138) := by trivial
theorem globalException138_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified138) = none := by rfl
#print axioms globalTranslate138_eq
end InitE.FrontendStages.Declarations
