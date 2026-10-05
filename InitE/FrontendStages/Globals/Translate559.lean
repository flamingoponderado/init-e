import InitE.FrontendStages.Globals.Output559
import InitE.FrontendStages.Declarations.Data559
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate543
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate559_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified559) =
        some globalOutput559 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal559 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified559) := by trivial
theorem globalException559_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified559) = none := by rfl
#print axioms globalTranslate559_eq
end InitE.FrontendStages.Declarations
