import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output574
import InitE.FrontendStages.Declarations.Data574
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate554
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate574_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) =
        some globalOutput574 := by
  dsimp only [simplified574, globalOutput574]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal574 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) := by trivial
theorem globalException574_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified574) = none := by rfl
#print axioms globalTranslate574_eq
end InitE.FrontendStages.Declarations
