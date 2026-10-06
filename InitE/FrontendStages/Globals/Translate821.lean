import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output821
import InitE.FrontendStages.Declarations.Data821
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate805
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate821_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified821) =
        some globalOutput821 := by
  dsimp only [simplified821, globalOutput821]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal821 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified821) := by trivial
theorem globalException821_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified821) = none := by rfl
#print axioms globalTranslate821_eq
end InitE.FrontendStages.Declarations
