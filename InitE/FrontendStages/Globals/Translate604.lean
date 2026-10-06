import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output604
import InitE.FrontendStages.Declarations.Data604
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate588
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate604_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified604) =
        some globalOutput604 := by
  dsimp only [simplified604, globalOutput604]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal604 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified604) := by trivial
theorem globalException604_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified604) = none := by rfl
#print axioms globalTranslate604_eq
end InitE.FrontendStages.Declarations
