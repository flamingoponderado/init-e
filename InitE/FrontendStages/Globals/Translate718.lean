import InitE.FrontendStages.Globals.Output718
import InitE.FrontendStages.Declarations.Data718
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate702
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate718_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) =
        some globalOutput718 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal718 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) := by trivial
theorem globalException718_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified718) = none := by rfl
#print axioms globalTranslate718_eq
end InitE.FrontendStages.Declarations
