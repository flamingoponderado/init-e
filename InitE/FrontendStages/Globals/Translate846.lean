import InitE.FrontendStages.Globals.Output846
import InitE.FrontendStages.Declarations.Data846
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate830
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate846_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified846) =
        some globalOutput846 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal846 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified846) := by trivial
theorem globalException846_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified846) = none := by rfl
#print axioms globalTranslate846_eq
end InitE.FrontendStages.Declarations
