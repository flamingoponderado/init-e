import InitE.FrontendStages.Globals.Output521
import InitE.FrontendStages.Declarations.Data521
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate505
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate521_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) =
        some globalOutput521 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal521 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) := by trivial
theorem globalException521_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified521) = none := by rfl
#print axioms globalTranslate521_eq
end InitE.FrontendStages.Declarations
