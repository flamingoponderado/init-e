import InitE.FrontendStages.Globals.Output866
import InitE.FrontendStages.Declarations.Data866
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate850
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate866_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified866) =
        some globalOutput866 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal866 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified866) := by trivial
theorem globalException866_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified866) = none := by rfl
#print axioms globalTranslate866_eq
end InitE.FrontendStages.Declarations
