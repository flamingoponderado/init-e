import InitE.FrontendStages.Globals.Output531
import InitE.FrontendStages.Declarations.Data531
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate515
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate531_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified531) =
        some globalOutput531 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal531 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified531) := by trivial
theorem globalException531_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified531) = none := by rfl
#print axioms globalTranslate531_eq
end InitE.FrontendStages.Declarations
