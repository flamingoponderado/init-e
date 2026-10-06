import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output925
import InitE.FrontendStages.Declarations.Data925
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate909
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate925_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) =
        some globalOutput925 := by
  dsimp only [simplified925, globalOutput925]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal925 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) := by trivial
theorem globalException925_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified925) = none := by rfl
#print axioms globalTranslate925_eq
end InitE.FrontendStages.Declarations
