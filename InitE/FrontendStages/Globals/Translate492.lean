import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.Output492
import InitE.FrontendStages.Declarations.Data492
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate476
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate492_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) =
        some globalOutput492 := by
  dsimp only [simplified492, globalOutput492]
  rw [InitE.FrontendCodecComputation.declToHOL_function_eq]
  simp only [InitE.GlobalsComputation.compiledFunction,
    InitE.GlobalsComputation.renameDeclaration,
    InitE.GlobalsKernelComputation.compileProg_function_eq,
    InitE.GlobalsKernelComputation.fperm_function_eq]
  rw [globalContext_structural_eq]
  kernel_rfl
theorem globalNonGlobal492 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) := by trivial
theorem globalException492_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified492) = none := by rfl
#print axioms globalTranslate492_eq
end InitE.FrontendStages.Declarations
