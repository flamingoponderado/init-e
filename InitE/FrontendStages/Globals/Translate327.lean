import InitE.FrontendStages.Globals.Output327
import InitE.FrontendStages.Declarations.Data327
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate311
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate327_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified327) =
        some globalOutput327 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal327 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified327) := by trivial
theorem globalException327_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified327) = none := by rfl
#print axioms globalTranslate327_eq
end InitE.FrontendStages.Declarations
