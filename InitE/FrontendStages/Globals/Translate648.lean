import InitE.FrontendStages.Globals.Output648
import InitE.FrontendStages.Declarations.Data648
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate632
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate648_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified648) =
        some globalOutput648 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal648 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified648) := by trivial
theorem globalException648_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified648) = none := by rfl
#print axioms globalTranslate648_eq
end InitE.FrontendStages.Declarations
