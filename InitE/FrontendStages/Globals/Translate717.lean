import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output717
import InitE.FrontendStages.Declarations.Data717
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate701
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate717_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified717) =
        some globalOutput717 := by
  dsimp only [simplified717, globalOutput717]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal717 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified717) := by trivial
theorem globalException717_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified717) = none := by rfl
#print axioms globalTranslate717_eq
end InitE.FrontendStages.Declarations
