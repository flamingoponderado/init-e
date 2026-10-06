import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output478
import InitE.FrontendStages.Declarations.Data478
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate462
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate478_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) =
        some globalOutput478 := by
  dsimp only [simplified478, globalOutput478]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal478 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) := by trivial
theorem globalException478_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified478) = none := by rfl
#print axioms globalTranslate478_eq
end InitE.FrontendStages.Declarations
