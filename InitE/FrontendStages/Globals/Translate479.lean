import InitE.FrontendStages.Globals.Output479
import InitE.FrontendStages.Declarations.Data479
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate463
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate479_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) =
        some globalOutput479 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal479 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) := by trivial
theorem globalException479_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified479) = none := by rfl
#print axioms globalTranslate479_eq
end InitE.FrontendStages.Declarations
