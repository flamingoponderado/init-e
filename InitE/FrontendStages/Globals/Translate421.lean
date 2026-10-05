import InitE.FrontendStages.Globals.Output421
import InitE.FrontendStages.Declarations.Data421
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate400
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate421_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) =
        some globalOutput421 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal421 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) := by trivial
theorem globalException421_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified421) = none := by rfl
#print axioms globalTranslate421_eq
end InitE.FrontendStages.Declarations
