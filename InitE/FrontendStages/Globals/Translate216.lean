import InitE.FrontendStages.Globals.Output216
import InitE.FrontendStages.Declarations.Data216
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate200
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate216_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified216) =
        some globalOutput216 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal216 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified216) := by trivial
theorem globalException216_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified216) = none := by rfl
#print axioms globalTranslate216_eq
end InitE.FrontendStages.Declarations
