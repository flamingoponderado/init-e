import InitE.FrontendStages.Globals.Output470
import InitE.FrontendStages.Declarations.Data470
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate454
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate470_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified470) =
        some globalOutput470 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal470 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified470) := by trivial
theorem globalException470_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified470) = none := by rfl
#print axioms globalTranslate470_eq
end InitE.FrontendStages.Declarations
