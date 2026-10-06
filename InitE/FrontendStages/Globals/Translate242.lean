import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output242
import InitE.FrontendStages.Declarations.Data242
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate225
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate242_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified242) =
        some globalOutput242 := by
  dsimp only [simplified242, globalOutput242]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal242 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified242) := by trivial
theorem globalException242_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified242) = none := by rfl
#print axioms globalTranslate242_eq
end InitE.FrontendStages.Declarations
