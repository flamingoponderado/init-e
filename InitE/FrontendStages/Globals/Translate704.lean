import InitE.FrontendStages.Globals.Output704
import InitE.FrontendStages.Declarations.Data704
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate688
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate704_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) =
        some globalOutput704 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal704 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) := by trivial
theorem globalException704_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified704) = none := by rfl
#print axioms globalTranslate704_eq
end InitE.FrontendStages.Declarations
