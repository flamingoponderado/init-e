import InitE.FrontendStages.Globals.Output268
import InitE.FrontendStages.Declarations.Data268
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate252
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate268_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified268) =
        some globalOutput268 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal268 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified268) := by trivial
theorem globalException268_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified268) = none := by rfl
#print axioms globalTranslate268_eq
end InitE.FrontendStages.Declarations
