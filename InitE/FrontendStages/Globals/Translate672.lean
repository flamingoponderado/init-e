import InitE.FrontendStages.Globals.Output672
import InitE.FrontendStages.Declarations.Data672
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate641
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate672_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified672) =
        some globalOutput672 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal672 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified672) := by trivial
theorem globalException672_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified672) = none := by rfl
#print axioms globalTranslate672_eq
end InitE.FrontendStages.Declarations
