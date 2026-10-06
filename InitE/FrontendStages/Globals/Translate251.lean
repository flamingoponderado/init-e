import InitE.FrontendStages.Globals.Output251
import InitE.FrontendStages.Declarations.Data251
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate228
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate251_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified251) =
        some globalOutput251 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal251 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified251) := by trivial
theorem globalException251_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified251) = none := by rfl
#print axioms globalTranslate251_eq
end InitE.FrontendStages.Declarations
