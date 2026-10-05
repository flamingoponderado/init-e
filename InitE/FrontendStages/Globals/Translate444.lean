import InitE.FrontendStages.Globals.Output444
import InitE.FrontendStages.Declarations.Data444
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate423
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate444_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified444) =
        some globalOutput444 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal444 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified444) := by trivial
theorem globalException444_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified444) = none := by rfl
#print axioms globalTranslate444_eq
end InitE.FrontendStages.Declarations
