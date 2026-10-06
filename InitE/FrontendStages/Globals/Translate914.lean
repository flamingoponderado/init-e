import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output914
import InitE.FrontendStages.Declarations.Data914
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate881
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate914_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) =
        some globalOutput914 := by
  dsimp only [simplified914, globalOutput914]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal914 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) := by trivial
theorem globalException914_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified914) = none := by rfl
#print axioms globalTranslate914_eq
end InitE.FrontendStages.Declarations
