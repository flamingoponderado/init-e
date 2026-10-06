import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output635
import InitE.FrontendStages.Declarations.Data635
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate610
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate635_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified635) =
        some globalOutput635 := by
  dsimp only [simplified635, globalOutput635]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal635 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified635) := by trivial
theorem globalException635_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified635) = none := by rfl
#print axioms globalTranslate635_eq
end InitE.FrontendStages.Declarations
