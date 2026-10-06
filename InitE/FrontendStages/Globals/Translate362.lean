import InitE.FrontendStages.Globals.Output362
import InitE.FrontendStages.Declarations.Data362
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate339
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate362_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified362) =
        some globalOutput362 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal362 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified362) := by trivial
theorem globalException362_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified362) = none := by rfl
#print axioms globalTranslate362_eq
end InitE.FrontendStages.Declarations
