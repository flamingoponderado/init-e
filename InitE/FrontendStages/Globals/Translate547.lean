import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output547
import InitE.FrontendStages.Declarations.Data547
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate531
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate547_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) =
        some globalOutput547 := by
  dsimp only [simplified547, globalOutput547]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal547 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) := by trivial
theorem globalException547_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) = none := by rfl
#print axioms globalTranslate547_eq
end InitE.FrontendStages.Declarations
