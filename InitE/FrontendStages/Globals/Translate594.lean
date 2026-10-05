import InitE.FrontendStages.Globals.Output594
import InitE.FrontendStages.Declarations.Data594
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate578
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate594_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) =
        some globalOutput594 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal594 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) := by trivial
theorem globalException594_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified594) = none := by rfl
#print axioms globalTranslate594_eq
end InitE.FrontendStages.Declarations
