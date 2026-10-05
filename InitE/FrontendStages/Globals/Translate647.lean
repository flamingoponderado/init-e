import InitE.FrontendStages.Globals.Output647
import InitE.FrontendStages.Declarations.Data647
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate631
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate647_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) =
        some globalOutput647 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal647 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) := by trivial
theorem globalException647_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified647) = none := by rfl
#print axioms globalTranslate647_eq
end InitE.FrontendStages.Declarations
