import InitE.FrontendStages.Globals.Output522
import InitE.FrontendStages.Declarations.Data522
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate506
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate522_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified522) =
        some globalOutput522 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal522 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified522) := by trivial
theorem globalException522_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified522) = none := by rfl
#print axioms globalTranslate522_eq
end InitE.FrontendStages.Declarations
