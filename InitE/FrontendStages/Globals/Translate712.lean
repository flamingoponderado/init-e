import InitE.FrontendStages.Globals.Output712
import InitE.FrontendStages.Declarations.Data712
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate696
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate712_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified712) =
        some globalOutput712 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal712 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified712) := by trivial
theorem globalException712_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified712) = none := by rfl
#print axioms globalTranslate712_eq
end InitE.FrontendStages.Declarations
