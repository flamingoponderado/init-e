import InitE.FrontendStages.Globals.Output721
import InitE.FrontendStages.Declarations.Data721
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate704
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate721_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified721) =
        some globalOutput721 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal721 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified721) := by trivial
theorem globalException721_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified721) = none := by rfl
#print axioms globalTranslate721_eq
end InitE.FrontendStages.Declarations
