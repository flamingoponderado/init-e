import InitE.FrontendStages.Globals.Output136
import InitE.FrontendStages.Declarations.Data136
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate120
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate136_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified136) =
        some globalOutput136 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal136 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified136) := by trivial
theorem globalException136_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified136) = none := by rfl
#print axioms globalTranslate136_eq
end InitE.FrontendStages.Declarations
