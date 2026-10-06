import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output910
import InitE.FrontendStages.Declarations.Data910
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate877
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate910_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified910) =
        some globalOutput910 := by
  dsimp only [simplified910, globalOutput910]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal910 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified910) := by trivial
theorem globalException910_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified910) = none := by rfl
#print axioms globalTranslate910_eq
end InitE.FrontendStages.Declarations
