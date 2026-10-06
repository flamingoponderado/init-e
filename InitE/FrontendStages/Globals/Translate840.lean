import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output840
import InitE.FrontendStages.Declarations.Data840
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate824
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate840_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified840) =
        some globalOutput840 := by
  dsimp only [simplified840, globalOutput840]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal840 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified840) := by trivial
theorem globalException840_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified840) = none := by rfl
#print axioms globalTranslate840_eq
end InitE.FrontendStages.Declarations
