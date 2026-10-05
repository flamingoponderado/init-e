import InitE.FrontendStages.Globals.Output489
import InitE.FrontendStages.Declarations.Data489
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate473
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate489_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified489) =
        some globalOutput489 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal489 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified489) := by trivial
theorem globalException489_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified489) = none := by rfl
#print axioms globalTranslate489_eq
end InitE.FrontendStages.Declarations
