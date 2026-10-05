import InitE.FrontendStages.Globals.Output577
import InitE.FrontendStages.Declarations.Data577
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate557
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate577_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified577) =
        some globalOutput577 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal577 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified577) := by trivial
theorem globalException577_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified577) = none := by rfl
#print axioms globalTranslate577_eq
end InitE.FrontendStages.Declarations
