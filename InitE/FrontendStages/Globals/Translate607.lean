import InitE.FrontendStages.Globals.Output607
import InitE.FrontendStages.Declarations.Data607
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate591
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate607_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified607) =
        some globalOutput607 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal607 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified607) := by trivial
theorem globalException607_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified607) = none := by rfl
#print axioms globalTranslate607_eq
end InitE.FrontendStages.Declarations
