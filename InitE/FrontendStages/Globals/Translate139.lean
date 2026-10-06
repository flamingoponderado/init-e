import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output139
import InitE.FrontendStages.Declarations.Data139
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate123
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate139_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) =
        some globalOutput139 := by
  dsimp only [simplified139, globalOutput139]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal139 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) := by trivial
theorem globalException139_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified139) = none := by rfl
#print axioms globalTranslate139_eq
end InitE.FrontendStages.Declarations
