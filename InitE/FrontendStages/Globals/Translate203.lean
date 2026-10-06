import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output203
import InitE.FrontendStages.Declarations.Data203
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate183
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate203_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified203) =
        some globalOutput203 := by
  dsimp only [simplified203, globalOutput203]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal203 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified203) := by trivial
theorem globalException203_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified203) = none := by rfl
#print axioms globalTranslate203_eq
end InitE.FrontendStages.Declarations
