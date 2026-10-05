import InitE.FrontendStages.Globals.Output287
import InitE.FrontendStages.Declarations.Data287
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate271
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate287_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified287) =
        some globalOutput287 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal287 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified287) := by trivial
theorem globalException287_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified287) = none := by rfl
#print axioms globalTranslate287_eq
end InitE.FrontendStages.Declarations
