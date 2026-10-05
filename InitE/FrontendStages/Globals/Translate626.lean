import InitE.FrontendStages.Globals.Output626
import InitE.FrontendStages.Declarations.Data626
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate601
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate626_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified626) =
        some globalOutput626 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal626 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified626) := by trivial
theorem globalException626_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified626) = none := by rfl
#print axioms globalTranslate626_eq
end InitE.FrontendStages.Declarations
