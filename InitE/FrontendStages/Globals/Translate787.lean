import InitE.FrontendStages.Globals.Output787
import InitE.FrontendStages.Declarations.Data787
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate771
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate787_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified787) =
        some globalOutput787 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal787 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified787) := by trivial
theorem globalException787_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified787) = none := by rfl
#print axioms globalTranslate787_eq
end InitE.FrontendStages.Declarations
