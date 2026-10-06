import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output174
import InitE.FrontendStages.Declarations.Data174
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate158
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate174_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified174) =
        some globalOutput174 := by
  dsimp only [simplified174, globalOutput174]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal174 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified174) := by trivial
theorem globalException174_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified174) = none := by rfl
#print axioms globalTranslate174_eq
end InitE.FrontendStages.Declarations
