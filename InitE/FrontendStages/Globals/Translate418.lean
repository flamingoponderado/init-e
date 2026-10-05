import InitE.FrontendStages.Globals.Output418
import InitE.FrontendStages.Declarations.Data418
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate397
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate418_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified418) =
        some globalOutput418 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal418 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified418) := by trivial
theorem globalException418_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified418) = none := by rfl
#print axioms globalTranslate418_eq
end InitE.FrontendStages.Declarations
