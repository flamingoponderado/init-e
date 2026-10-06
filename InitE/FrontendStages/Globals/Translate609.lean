import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output609
import InitE.FrontendStages.Declarations.Data609
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate593
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate609_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified609) =
        some globalOutput609 := by
  dsimp only [simplified609, globalOutput609]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal609 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified609) := by trivial
theorem globalException609_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified609) = none := by rfl
#print axioms globalTranslate609_eq
end InitE.FrontendStages.Declarations
