import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output528
import InitE.FrontendStages.Declarations.Data528
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate512
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate528_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) =
        some globalOutput528 := by
  dsimp only [simplified528, globalOutput528]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal528 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) := by trivial
theorem globalException528_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified528) = none := by rfl
#print axioms globalTranslate528_eq
end InitE.FrontendStages.Declarations
