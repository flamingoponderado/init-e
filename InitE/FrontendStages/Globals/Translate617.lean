import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output617
import InitE.FrontendStages.Declarations.Data617
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate597
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate617_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) =
        some globalOutput617 := by
  dsimp only [simplified617, globalOutput617]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal617 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) := by trivial
theorem globalException617_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) = none := by rfl
#print axioms globalTranslate617_eq
end InitE.FrontendStages.Declarations
