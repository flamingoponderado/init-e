import InitE.FrontendStages.Globals.Output328
import InitE.FrontendStages.Declarations.Data328
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate312
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate328_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified328) =
        some globalOutput328 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal328 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified328) := by trivial
theorem globalException328_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified328) = none := by rfl
#print axioms globalTranslate328_eq
end InitE.FrontendStages.Declarations
