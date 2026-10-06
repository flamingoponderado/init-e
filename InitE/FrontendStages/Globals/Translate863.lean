import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output863
import InitE.FrontendStages.Declarations.Data863
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate846
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate863_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified863) =
        some globalOutput863 := by
  dsimp only [simplified863, globalOutput863]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal863 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified863) := by trivial
theorem globalException863_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified863) = none := by rfl
#print axioms globalTranslate863_eq
end InitE.FrontendStages.Declarations
