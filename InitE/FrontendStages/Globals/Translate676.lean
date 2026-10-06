import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output676
import InitE.FrontendStages.Declarations.Data676
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate645
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate676_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified676) =
        some globalOutput676 := by
  dsimp only [simplified676, globalOutput676]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal676 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified676) := by trivial
theorem globalException676_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified676) = none := by rfl
#print axioms globalTranslate676_eq
end InitE.FrontendStages.Declarations
