import InitE.FrontendStages.Globals.Output170
import InitE.FrontendStages.Declarations.Data170
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate154
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate170_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) =
        some globalOutput170 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal170 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) := by trivial
theorem globalException170_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified170) = none := by rfl
#print axioms globalTranslate170_eq
end InitE.FrontendStages.Declarations
