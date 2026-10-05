import InitE.FrontendStages.Globals.Output403
import InitE.FrontendStages.Declarations.Data403
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate387
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate403_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) =
        some globalOutput403 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal403 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) := by trivial
theorem globalException403_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified403) = none := by rfl
#print axioms globalTranslate403_eq
end InitE.FrontendStages.Declarations
