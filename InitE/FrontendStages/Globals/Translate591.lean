import InitE.FrontendStages.Globals.Output591
import InitE.FrontendStages.Declarations.Data591
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate575
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate591_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified591) =
        some globalOutput591 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal591 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified591) := by trivial
theorem globalException591_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified591) = none := by rfl
#print axioms globalTranslate591_eq
end InitE.FrontendStages.Declarations
