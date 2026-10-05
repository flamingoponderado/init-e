import InitE.FrontendStages.Globals.Output499
import InitE.FrontendStages.Declarations.Data499
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate483
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate499_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) =
        some globalOutput499 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal499 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) := by trivial
theorem globalException499_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified499) = none := by rfl
#print axioms globalTranslate499_eq
end InitE.FrontendStages.Declarations
