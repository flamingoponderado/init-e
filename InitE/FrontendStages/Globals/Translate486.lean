import InitE.FrontendStages.Globals.Output486
import InitE.FrontendStages.Declarations.Data486
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate470
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate486_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) =
        some globalOutput486 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal486 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) := by trivial
theorem globalException486_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified486) = none := by rfl
#print axioms globalTranslate486_eq
end InitE.FrontendStages.Declarations
