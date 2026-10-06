import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output899
import InitE.FrontendStages.Declarations.Data899
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate867
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate899_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) =
        some globalOutput899 := by
  dsimp only [simplified899, globalOutput899]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal899 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) := by trivial
theorem globalException899_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) = none := by rfl
#print axioms globalTranslate899_eq
end InitE.FrontendStages.Declarations
