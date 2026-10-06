import InitE.FrontendStages.Globals.Output448
import InitE.FrontendStages.Declarations.Data448
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate427
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate448_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) =
        some globalOutput448 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal448 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) := by trivial
theorem globalException448_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified448) = none := by rfl
#print axioms globalTranslate448_eq
end InitE.FrontendStages.Declarations
