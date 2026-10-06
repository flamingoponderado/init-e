import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output43
import InitE.FrontendStages.Declarations.Data43
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate26
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate43_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified43) =
        some globalOutput43 := by
  dsimp only [simplified43, globalOutput43]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal43 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified43) := by trivial
theorem globalException43_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified43) = none := by rfl
#print axioms globalTranslate43_eq
end InitE.FrontendStages.Declarations
