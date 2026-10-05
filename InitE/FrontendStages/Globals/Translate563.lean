import InitE.FrontendStages.Globals.Output563
import InitE.FrontendStages.Declarations.Data563
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate547
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate563_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified563) =
        some globalOutput563 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal563 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified563) := by trivial
theorem globalException563_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified563) = none := by rfl
#print axioms globalTranslate563_eq
end InitE.FrontendStages.Declarations
