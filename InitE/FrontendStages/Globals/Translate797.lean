import InitE.FrontendStages.Globals.Output797
import InitE.FrontendStages.Declarations.Data797
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate778
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate797_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) =
        some globalOutput797 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal797 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) := by trivial
theorem globalException797_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified797) = none := by rfl
#print axioms globalTranslate797_eq
end InitE.FrontendStages.Declarations
