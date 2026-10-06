import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output33
import InitE.FrontendStages.Declarations.Data33
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate17
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate33_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified33) =
        some globalOutput33 := by
  dsimp only [simplified33, globalOutput33]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal33 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified33) := by trivial
theorem globalException33_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified33) = none := by rfl
#print axioms globalTranslate33_eq
end InitE.FrontendStages.Declarations
