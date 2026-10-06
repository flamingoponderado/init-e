import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output94
import InitE.FrontendStages.Declarations.Data94
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate75
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate94_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified94) =
        some globalOutput94 := by
  dsimp only [simplified94, globalOutput94]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal94 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified94) := by trivial
theorem globalException94_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified94) = none := by rfl
#print axioms globalTranslate94_eq
end InitE.FrontendStages.Declarations
