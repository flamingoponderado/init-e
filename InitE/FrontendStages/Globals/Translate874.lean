import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output874
import InitE.FrontendStages.Declarations.Data874
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate858
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate874_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified874) =
        some globalOutput874 := by
  dsimp only [simplified874, globalOutput874]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal874 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified874) := by trivial
theorem globalException874_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified874) = none := by rfl
#print axioms globalTranslate874_eq
end InitE.FrontendStages.Declarations
