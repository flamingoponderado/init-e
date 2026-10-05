import InitE.FrontendStages.Globals.Output719
import InitE.FrontendStages.Declarations.Data719
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate703
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate719_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified719) =
        some globalOutput719 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal719 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified719) := by trivial
theorem globalException719_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified719) = none := by rfl
#print axioms globalTranslate719_eq
end InitE.FrontendStages.Declarations
