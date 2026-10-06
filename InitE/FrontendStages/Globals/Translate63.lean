import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output63
import InitE.FrontendStages.Declarations.Data63
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate47
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate63_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified63) =
        some globalOutput63 := by
  dsimp only [simplified63, globalOutput63]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal63 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified63) := by trivial
theorem globalException63_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified63) = none := by rfl
#print axioms globalTranslate63_eq
end InitE.FrontendStages.Declarations
