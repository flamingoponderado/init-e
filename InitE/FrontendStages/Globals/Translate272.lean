import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output272
import InitE.FrontendStages.Declarations.Data272
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate256
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate272_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified272) =
        some globalOutput272 := by
  dsimp only [simplified272, globalOutput272]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal272 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified272) := by trivial
theorem globalException272_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified272) = none := by rfl
#print axioms globalTranslate272_eq
end InitE.FrontendStages.Declarations
