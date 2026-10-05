import InitE.FrontendStages.Globals.Output773
import InitE.FrontendStages.Declarations.Data773
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate754
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate773_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) =
        some globalOutput773 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal773 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) := by trivial
theorem globalException773_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified773) = none := by rfl
#print axioms globalTranslate773_eq
end InitE.FrontendStages.Declarations
