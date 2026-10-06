import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output553
import InitE.FrontendStages.Declarations.Data553
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate537
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate553_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified553) =
        some globalOutput553 := by
  dsimp only [simplified553, globalOutput553]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal553 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified553) := by trivial
theorem globalException553_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified553) = none := by rfl
#print axioms globalTranslate553_eq
end InitE.FrontendStages.Declarations
