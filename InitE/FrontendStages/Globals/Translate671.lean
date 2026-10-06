import InitE.FrontendStages.Globals.Output671
import InitE.FrontendStages.Declarations.Data671
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate640
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate671_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified671) =
        some globalOutput671 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal671 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified671) := by trivial
theorem globalException671_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified671) = none := by rfl
#print axioms globalTranslate671_eq
end InitE.FrontendStages.Declarations
