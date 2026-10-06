import InitE.FrontendStages.Globals.Output195
import InitE.FrontendStages.Declarations.Data195
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate175
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate195_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) =
        some globalOutput195 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal195 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) := by trivial
theorem globalException195_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified195) = none := by rfl
#print axioms globalTranslate195_eq
end InitE.FrontendStages.Declarations
