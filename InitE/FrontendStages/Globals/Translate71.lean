import InitE.FrontendStages.Globals.Output71
import InitE.FrontendStages.Declarations.Data71
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate55
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate71_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) =
        some globalOutput71 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal71 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) := by trivial
theorem globalException71_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified71) = none := by rfl
#print axioms globalTranslate71_eq
end InitE.FrontendStages.Declarations
