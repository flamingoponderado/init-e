import InitE.FrontendStages.Globals.Output123
import InitE.FrontendStages.Declarations.Data123
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate107
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate123_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) =
        some globalOutput123 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal123 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) := by trivial
theorem globalException123_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified123) = none := by rfl
#print axioms globalTranslate123_eq
end InitE.FrontendStages.Declarations
