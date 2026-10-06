import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output388
import InitE.FrontendStages.Declarations.Data388
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate372
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate388_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified388) =
        some globalOutput388 := by
  dsimp only [simplified388, globalOutput388]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal388 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified388) := by trivial
theorem globalException388_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified388) = none := by rfl
#print axioms globalTranslate388_eq
end InitE.FrontendStages.Declarations
