import InitE.FrontendStages.Globals.Output539
import InitE.FrontendStages.Declarations.Data539
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate523
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate539_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified539) =
        some globalOutput539 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal539 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified539) := by trivial
theorem globalException539_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified539) = none := by rfl
#print axioms globalTranslate539_eq
end InitE.FrontendStages.Declarations
