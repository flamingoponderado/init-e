import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output809
import InitE.FrontendStages.Declarations.Data809
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate790
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate809_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) =
        some globalOutput809 := by
  dsimp only [simplified809, globalOutput809]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal809 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) := by trivial
theorem globalException809_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) = none := by rfl
#print axioms globalTranslate809_eq
end InitE.FrontendStages.Declarations
