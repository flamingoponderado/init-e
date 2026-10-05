import InitE.FrontendStages.Globals.Output715
import InitE.FrontendStages.Declarations.Data715
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate699
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate715_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified715) =
        some globalOutput715 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal715 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified715) := by trivial
theorem globalException715_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified715) = none := by rfl
#print axioms globalTranslate715_eq
end InitE.FrontendStages.Declarations
