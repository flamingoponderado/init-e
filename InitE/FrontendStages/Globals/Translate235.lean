import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output235
import InitE.FrontendStages.Declarations.Data235
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate217
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate235_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) =
        some globalOutput235 := by
  dsimp only [simplified235, globalOutput235]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal235 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) := by trivial
theorem globalException235_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified235) = none := by rfl
#print axioms globalTranslate235_eq
end InitE.FrontendStages.Declarations
